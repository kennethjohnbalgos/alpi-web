require 'test_helper'

class ContentResidentialsControllerTest < ActionController::TestCase
  setup do
    @content_residential = content_residentials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_residentials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_residential" do
    assert_difference('ContentResidential.count') do
      post :create, content_residential: { context: @content_residential.context, description: @content_residential.description, title: @content_residential.title }
    end

    assert_redirected_to content_residential_path(assigns(:content_residential))
  end

  test "should show content_residential" do
    get :show, id: @content_residential
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_residential
    assert_response :success
  end

  test "should update content_residential" do
    put :update, id: @content_residential, content_residential: { context: @content_residential.context, description: @content_residential.description, title: @content_residential.title }
    assert_redirected_to content_residential_path(assigns(:content_residential))
  end

  test "should destroy content_residential" do
    assert_difference('ContentResidential.count', -1) do
      delete :destroy, id: @content_residential
    end

    assert_redirected_to content_residentials_path
  end
end
