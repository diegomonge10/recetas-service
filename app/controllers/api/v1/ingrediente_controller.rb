class Api::V1::IngredienteController < ApplicationController
  before_action :set_ingrediente, only: %i[ show update destroy ]

  # GET /ingredientes
  def index
    @ingrediente = Ingrediente.all

    render json: @ingrediente
  end

  # GET /ingrediente/1
  def show
    render json: @ingrediente
  end

  # POST /ingredientes
  def create
    @ingrediente = Ingrediente.new(ingrediente_params)

    if @ingrediente.save
      render json: @ingrediente, status: :created, location: @ingrediente
    else
      render json: @ingrediente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingrediente/1
  def update
    if @ingrediente.update(ingrediente_params)
      render json: @ingrediente
    else
      render json: @ingrediente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredientes/1
  def destroy
    @ingrediente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingrediente
      @ingrediente = Ingrediente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingrediente_params
      params.require(:ingrediente).permit(:id, :nombre)
    end
end
