require 'test_helper'

class TipoApuestaControllerTest < ActionController::TestCase
  setup do
    @tipo_apuestum = tipo_apuesta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_apuesta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_apuestum" do
    assert_difference('TipoApuestum.count') do
      post :create, tipo_apuestum: @tipo_apuestum.attributes
    end

    assert_redirected_to tipo_apuestum_path(assigns(:tipo_apuestum))
  end

  test "should show tipo_apuestum" do
    get :show, id: @tipo_apuestum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_apuestum
    assert_response :success
  end

  test "should update tipo_apuestum" do
    put :update, id: @tipo_apuestum, tipo_apuestum: @tipo_apuestum.attributes
    assert_redirected_to tipo_apuestum_path(assigns(:tipo_apuestum))
  end

  test "should destroy tipo_apuestum" do
    assert_difference('TipoApuestum.count', -1) do
      delete :destroy, id: @tipo_apuestum
    end

    assert_redirected_to tipo_apuesta_path
  end
end
