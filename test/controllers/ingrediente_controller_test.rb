require "test_helper"

class IngredienteControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingrediente = ingrediente(:one)
  end

  test "should get index" do
    get ingrediente_url, as: :json
    assert_response :success
  end

  test "should create ingrediente" do
    assert_difference("Ingrediente.count") do
      post ingrediente_url, params: { ingrediente: { id: @ingrediente.id, nombre: @ingrediente.nombre } }, as: :json
    end

    assert_response :created
  end

  test "should show ingrediente" do
    get ingrediente_url(@ingrediente), as: :json
    assert_response :success
  end

  test "should update ingrediente" do
    patch ingrediente_url(@ingrediente), params: { ingrediente: { id: @ingrediente.id, nombre: @ingrediente.nombre } }, as: :json
    assert_response :success
  end

  test "should destroy ingrediente" do
    assert_difference("Ingrediente.count", -1) do
      delete ingrediente_url(@ingrediente), as: :json
    end

    assert_response :no_content
  end
end
