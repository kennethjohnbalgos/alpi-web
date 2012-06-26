require 'test_helper'

class ContentExploresControllerTest < ActionController::TestCase
  setup do
    @content_explore = content_explores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_explores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_explore" do
    assert_difference('ContentExplore.count') do
      post :create, content_explore: { context: @content_explore.context, description: @content_explore.description, title: @content_explore.title }
    end

    assert_redirected_to content_explore_path(assigns(:content_explore))
  end

  test "should show content_explore" do
    get :show, id: @content_explore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_explore
    assert_response :success
  end

  test "should update content_explore" do
    put :update, id: @content_explore, content_explore: { context: @content_explore.context, description: @content_explore.description, title: @content_explore.title }
    assert_redirected_to content_explore_path(assigns(:content_explore))
  end

  test "should destroy content_explore" do
    assert_difference('ContentExplore.count', -1) do
      delete :destroy, id: @content_explore
    end

    assert_redirected_to content_explores_path
  end
end
