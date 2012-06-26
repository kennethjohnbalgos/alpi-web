require 'test_helper'

class ContentItemResidentialsControllerTest < ActionController::TestCase
  setup do
    @content_item_residential = content_item_residentials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_item_residentials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_item_residential" do
    assert_difference('ContentItemResidential.count') do
      post :create, content_item_residential: { context: @content_item_residential.context, description: @content_item_residential.description, title: @content_item_residential.title }
    end

    assert_redirected_to content_item_residential_path(assigns(:content_item_residential))
  end

  test "should show content_item_residential" do
    get :show, id: @content_item_residential
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_item_residential
    assert_response :success
  end

  test "should update content_item_residential" do
    put :update, id: @content_item_residential, content_item_residential: { context: @content_item_residential.context, description: @content_item_residential.description, title: @content_item_residential.title }
    assert_redirected_to content_item_residential_path(assigns(:content_item_residential))
  end

  test "should destroy content_item_residential" do
    assert_difference('ContentItemResidential.count', -1) do
      delete :destroy, id: @content_item_residential
    end

    assert_redirected_to content_item_residentials_path
  end
end
