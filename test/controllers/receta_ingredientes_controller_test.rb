require "test_helper"

class RecetaIngredientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receta_ingrediente = receta_ingredientes(:one)
  end

  test "should get index" do
    get receta_ingredientes_url, as: :json
    assert_response :success
  end

  test "should create receta_ingrediente" do
    assert_difference("RecetaIngrediente.count") do
      post receta_ingredientes_url, params: { receta_ingrediente: { cantidad: @receta_ingrediente.cantidad, id_ingrediente: @receta_ingrediente.id_ingrediente, id_receta: @receta_ingrediente.id_receta } }, as: :json
    end

    assert_response :created
  end

  test "should show receta_ingrediente" do
    get receta_ingrediente_url(@receta_ingrediente), as: :json
    assert_response :success
  end

  test "should update receta_ingrediente" do
    patch receta_ingrediente_url(@receta_ingrediente), params: { receta_ingrediente: { cantidad: @receta_ingrediente.cantidad, id_ingrediente: @receta_ingrediente.id_ingrediente, id_receta: @receta_ingrediente.id_receta } }, as: :json
    assert_response :success
  end

  test "should destroy receta_ingrediente" do
    assert_difference("RecetaIngrediente.count", -1) do
      delete receta_ingrediente_url(@receta_ingrediente), as: :json
    end

    assert_response :no_content
  end
end
