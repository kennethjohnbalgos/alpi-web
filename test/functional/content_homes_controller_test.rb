require 'test_helper'

class ContentHomesControllerTest < ActionController::TestCase
  setup do
    @content_home = content_homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_home" do
    assert_difference('ContentHome.count') do
      post :create, content_home: { context: @content_home.context, description: @content_home.description, title: @content_home.title }
    end

    assert_redirected_to content_home_path(assigns(:content_home))
  end

  test "should show content_home" do
    get :show, id: @content_home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_home
    assert_response :success
  end

  test "should update content_home" do
    put :update, id: @content_home, content_home: { context: @content_home.context, description: @content_home.description, title: @content_home.title }
    assert_redirected_to content_home_path(assigns(:content_home))
  end

  test "should destroy content_home" do
    assert_difference('ContentHome.count', -1) do
      delete :destroy, id: @content_home
    end

    assert_redirected_to content_homes_path
  end
end
