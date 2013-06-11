require 'test_helper'

class ApuestaDetailsControllerTest < ActionController::TestCase
  setup do
    @apuesta_detail = apuesta_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apuesta_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apuesta_detail" do
    assert_difference('ApuestaDetail.count') do
      post :create, apuesta_detail: @apuesta_detail.attributes
    end

    assert_redirected_to apuesta_detail_path(assigns(:apuesta_detail))
  end

  test "should show apuesta_detail" do
    get :show, id: @apuesta_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apuesta_detail
    assert_response :success
  end

  test "should update apuesta_detail" do
    put :update, id: @apuesta_detail, apuesta_detail: @apuesta_detail.attributes
    assert_redirected_to apuesta_detail_path(assigns(:apuesta_detail))
  end

  test "should destroy apuesta_detail" do
    assert_difference('ApuestaDetail.count', -1) do
      delete :destroy, id: @apuesta_detail
    end

    assert_redirected_to apuesta_details_path
  end
end
