require 'test_helper'

class CaballoXCarrerasControllerTest < ActionController::TestCase
  setup do
    @caballo_x_carrera = caballo_x_carreras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caballo_x_carreras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caballo_x_carrera" do
    assert_difference('CaballoXCarrera.count') do
      post :create, caballo_x_carrera: @caballo_x_carrera.attributes
    end

    assert_redirected_to caballo_x_carrera_path(assigns(:caballo_x_carrera))
  end

  test "should show caballo_x_carrera" do
    get :show, id: @caballo_x_carrera
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caballo_x_carrera
    assert_response :success
  end

  test "should update caballo_x_carrera" do
    put :update, id: @caballo_x_carrera, caballo_x_carrera: @caballo_x_carrera.attributes
    assert_redirected_to caballo_x_carrera_path(assigns(:caballo_x_carrera))
  end

  test "should destroy caballo_x_carrera" do
    assert_difference('CaballoXCarrera.count', -1) do
      delete :destroy, id: @caballo_x_carrera
    end

    assert_redirected_to caballo_x_carreras_path
  end
end
