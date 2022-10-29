class Api::V1::VisitsController < ApplicationController
  before_action :set_visit, only: %i[show update destroy]

  # GET /api/v1/owners/1/animals
  def index
    @visits = Visit.where(animal_id: params[:animal_id])

    render json: @visits
  end

  # /api/v1/vets/1/visits
  # Custom route to get all visits by vet_id
  def by_vet
    @visits = Visit.where(vet_id: params[:vet_id])

    render json: @visits
  end

  # GET /api/v1/visits/1
  def show
    render json: @visit
  end

  # POST /api/v1/owners/1/animals
  def create
    @visit = Visit.new(visit_params)

    if @visit.save
      render json: @visit, status: :created
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/visits/1
  def update
    if @visit.update(visit_params)
      render json: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/visits/1
  def destroy
    @visit.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_visit
    @visit = Visit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def visit_params
    params.require(:visit).permit(:visit_date, :animal_id, :vet_id)
  end
end
