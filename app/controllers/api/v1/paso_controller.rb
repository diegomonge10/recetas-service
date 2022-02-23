class Api::V1::PasoController < ApplicationController
  before_action :set_paso, only: [:show, :update, :destroy]

  # GET /paso
  # GET /paso.json
  def index
    @paso = Paso.all
    render :showall
  end

  # GET /paso/1
  # GET /paso/1.json
  def show
    render :show
  end

  # POST /paso
  # POST /paso.json
  def create
    @paso = Paso.new(paso_params)

    if @paso.save
      render :show, status: :created, location: @paso
    else
      render json: @paso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paso/1
  # PATCH/PUT /paso/1.json
  def update
    if @paso.update(paso_params)
      render :show, status: :ok, location: @paso
    else
      render json: @paso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paso/1
  # DELETE /paso/1.json
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
      params.require(:paso).permit(:id, :id_receta, :descripcion, :orden)
    end
end
