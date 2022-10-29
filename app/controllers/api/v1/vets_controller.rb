class Api::V1::VetsController < ApplicationController
  before_action :set_vet, only: %i[show update destroy]

  # GET /api/v1/vets
  def index
    @vets = Vet.all

    render json: @vets
  end

  # GET /api/v1/vets/1
  def show
    render json: @vet
  end

  # POST /api/v1/vets
  def create
    @vet = Vet.new(vet_params)

    if @vet.save
      render json: @vet, status: :created
    else
      render json: @vet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/vets/1
  def update
    if @vet.update(vet_params)
      render json: @vet
    else
      render json: @vet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/vets/1
  def destroy
    @vet.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vet
    @vet = Vet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vet_params
    params.require(:vet).permit(:name, :age, :graduation_date)
  end
end
