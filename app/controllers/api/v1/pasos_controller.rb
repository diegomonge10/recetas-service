class Api::V1::PasosController < ApplicationController
  before_action :set_paso, only: [:show, :update, :destroy]

  # GET /pasos
  # GET /pasos.json
  def index
    @pasos = Paso.all
  end

  # GET /pasos/1
  # GET /pasos/1.json
  def show
  end

  # POST /pasos
  # POST /pasos.json
  def create
    @paso = Paso.new(paso_params)

    if @paso.save
      render :show, status: :created, location: api_v1_paso_url(@paso)
    else
      render json: @paso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pasos/1
  # PATCH/PUT /pasos/1.json
  def update
    if @paso.update(paso_params)
      render :show, status: :ok, location: @paso
    else
      render json: @paso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pasos/1
  # DELETE /pasos/1.json
  def destroy
    @paso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paso
      @paso = Paso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paso_params
      params.require(:paso).permit(:id, :receta_id, :descripcion, :orden)
    end
end
