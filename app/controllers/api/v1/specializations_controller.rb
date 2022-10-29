class Api::V1::SpecializationsController < ApplicationController
  before_action :set_specialization, only: %i[ show destroy ]

  # GET /api/v1/species/1/specializations
  def index
    @specializations = Specialization.where(species_id: params[:species_id])

    render json: @specializations
  end

  # /api/v1/vets/1/specializations
  # Custom route to get all specializations by vet_id
  def by_vet
    @specializations = Specialization.where(vet_id: params[:vet_id])

    render json: @specializations
  end

  # GET /api/v1/specializations/1
  def show
    render json: @specialization
  end

  # POST /api/v1/species/1/vets/1/specializations
  def create
    @specialization = Specialization.new(specialization_params)

    if @specialization.save
      render json: @specialization, status: :created
    else
      render json: @specialization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/specializations/1
  def destroy
    @specialization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialization
      @specialization = Specialization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def specialization_params
      params.require(:specialization).permit(:species_id, :vet_id)
    end
end
