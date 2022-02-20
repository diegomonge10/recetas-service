class Api::V1::RecetaController < ApplicationController
  before_action :set_receta, only: [:show, :update, :destroy]

  # GET /receta
  def index
    @receta = Receta.all

    #render json: @receta, include: "ingredientes"
    render :show
  end

  # GET /receta/1
  def show
    #render json: @receta, include: "ingredientes", "recetaIngredientes"
    render :show
  end

  # POST /receta
  def create
    @receta = Receta.new(receta_params)

    if @receta.save
      render json: @receta, status: :created, location: @receta
    else
      render json: @receta.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receta/1
  def update
    if @receta.update(receta_params)
      render json: @receta
    else
      render json: @receta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receta/1
  def destroy
    @receta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receta
      @receta = Receta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def receta_params
      params.require(:receta).permit(:id, :nombre, :valoracion, :porciones)
    end
end
