class Api::V1::RecetaIngredienteController < ApplicationController
  before_action :set_receta_ingrediente, only: %i[ show update destroy ]

  # GET /receta_ingredientes
  def index
    @receta_ingrediente = RecetaIngrediente.all

    render json: @receta_ingrediente
  end

  # GET /receta_ingredientes/1
  def show
    render json: @receta_ingrediente
  end

  # POST /receta_ingredientes
  def create
    @receta_ingrediente = RecetaIngrediente.new(receta_ingrediente_params)

    if @receta_ingrediente.save
      render json: @receta_ingrediente, status: :created, location: api_v1_receta_ingrediente_url(@receta_ingrediente)
    else
      render json: @receta_ingrediente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receta_ingredientes/1
  def update
    if @receta_ingrediente.update(receta_ingrediente_params)
      render json: @receta_ingrediente
    else
      render json: @receta_ingrediente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receta_ingredientes/1
  def destroy
    @receta_ingrediente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receta_ingrediente
      @receta_ingrediente = RecetaIngrediente.find(params[:id_receta])
    end

    # Only allow a list of trusted parameters through.
    def receta_ingrediente_params
      params.require(:receta_ingrediente).permit(:id_receta, :id_ingrediente, :cantidad)
    end
end
