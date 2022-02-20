class RecetaController < ApplicationController
  before_action :set_recetum, only: %i[ show update destroy ]

  # GET /receta
  def index
    @receta = Recetum.all

    render json: @receta
  end

  # GET /receta/1
  def show
    render json: @recetum
  end

  # POST /receta
  def create
    @recetum = Recetum.new(recetum_params)

    if @recetum.save
      render json: @recetum, status: :created, location: @recetum
    else
      render json: @recetum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receta/1
  def update
    if @recetum.update(recetum_params)
      render json: @recetum
    else
      render json: @recetum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receta/1
  def destroy
    @recetum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recetum
      @recetum = Recetum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recetum_params
      params.require(:recetum).permit(:id, :nombre, :valoracion, :porciones)
    end
end
