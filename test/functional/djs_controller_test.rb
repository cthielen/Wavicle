require 'test_helper'

class DjsControllerTest < ActionController::TestCase
  setup do
    @dj = djs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:djs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dj" do
    assert_difference('Dj.count') do
      post :create, :dj => @dj.attributes
    end

    assert_redirected_to dj_path(assigns(:dj))
  end

  test "should show dj" do
    get :show, :id => @dj.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dj.to_param
    assert_response :success
  end

  test "should update dj" do
    put :update, :id => @dj.to_param, :dj => @dj.attributes
    assert_redirected_to dj_path(assigns(:dj))
  end

  test "should destroy dj" do
    assert_difference('Dj.count', -1) do
      delete :destroy, :id => @dj.to_param
    end

    assert_redirected_to djs_path
  end
end
