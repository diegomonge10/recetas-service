require "test_helper"

class RecetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recetum = receta(:one)
  end

  test "should get index" do
    get receta_url, as: :json
    assert_response :success
  end

  test "should create recetum" do
    assert_difference("Recetum.count") do
      post receta_url, params: { recetum: { id: @recetum.id, nombre: @recetum.nombre, porciones: @recetum.porciones, valoracion: @recetum.valoracion } }, as: :json
    end

    assert_response :created
  end

  test "should show recetum" do
    get recetum_url(@recetum), as: :json
    assert_response :success
  end

  test "should update recetum" do
    patch recetum_url(@recetum), params: { recetum: { id: @recetum.id, nombre: @recetum.nombre, porciones: @recetum.porciones, valoracion: @recetum.valoracion } }, as: :json
    assert_response :success
  end

  test "should destroy recetum" do
    assert_difference("Recetum.count", -1) do
      delete recetum_url(@recetum), as: :json
    end

    assert_response :no_content
  end
end
