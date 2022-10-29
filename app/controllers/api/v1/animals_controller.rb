class Api::V1::AnimalsController < ApplicationController
  before_action :set_animal, only: %i[show update destroy]

  # GET /api/v1/animals
  def index
    @animals = Animal.all

    render json: @animals
  end

  # GET /api/v1/animals/1
  def show
    render json: @animal
  end

  # POST /api/v1/animals
  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      render json: @animal, status: :created
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/animals/1
  def update
    if @animal.update(animal_params)
      render json: @animal
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/animals/1
  def destroy
    @animal.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_animal
    @animal = Animal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def animal_params
    params.require(:animal).permit(:name, :birth_date, :neutered, :weight_kg, :owner_id, :species_id)
  end
end