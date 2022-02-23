require "test_helper"

class PasosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paso = pasos(:one)
  end

  test "should get index" do
    get pasos_url, as: :json
    assert_response :success
  end

  test "should create paso" do
    assert_difference("Paso.count") do
      post pasos_url, params: { paso: { descripcion: @paso.descripcion, id: @paso.id, orden: @paso.orden, receta_id: @paso.receta_id } }, as: :json
    end

    assert_response :created
  end

  test "should show paso" do
    get paso_url(@paso), as: :json
    assert_response :success
  end

  test "should update paso" do
    patch paso_url(@paso), params: { paso: { descripcion: @paso.descripcion, id: @paso.id, orden: @paso.orden, receta_id: @paso.receta_id } }, as: :json
    assert_response :success
  end

  test "should destroy paso" do
    assert_difference("Paso.count", -1) do
      delete paso_url(@paso), as: :json
    end

    assert_response :no_content
  end
end
