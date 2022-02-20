require "test_helper"

class RecetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receta = receta(:one)
  end

  test "should get index" do
    get receta_url, as: :json
    assert_response :success
  end

  test "should create receta" do
    assert_difference("Receta.count") do
      post receta_url, params: { receta: { id: @receta.id, nombre: @receta.nombre, porciones: @receta.porciones, valoracion: @receta.valoracion } }, as: :json
    end

    assert_response :created
  end

  test "should show receta" do
    get receta_url(@receta), as: :json
    assert_response :success
  end

  test "should update receta" do
    patch receta_url(@receta), params: { receta: { id: @receta.id, nombre: @receta.nombre, porciones: @receta.porciones, valoracion: @receta.valoracion } }, as: :json
    assert_response :success
  end

  test "should destroy receta" do
    assert_difference("Receta.count", -1) do
      delete receta_url(@receta), as: :json
    end

    assert_response :no_content
  end
end
