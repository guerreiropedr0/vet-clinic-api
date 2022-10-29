class Api::V1::SpeciesController < ApplicationController
  before_action :set_species, only: %i[show update destroy]

  # GET /api/v1/species
  def index
    @species = Species.all

    render json: @species
  end

  # GET /api/v1/species/1
  def show
    render json: @species
  end

  # POST /api/v1/species
  def create
    @species = Species.new(species_params)

    if @species.save
      render json: @species, status: :created
    else
      render json: @species.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/species/1
  def update
    if @species.update(species_params)
      render json: @species
    else
      render json: @species.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/species/1
  def destroy
    @species.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_species
    @species = Species.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def species_params
    params.require(:species).permit(:name)
  end
end
