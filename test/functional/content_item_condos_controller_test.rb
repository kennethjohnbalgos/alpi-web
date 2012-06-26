require 'test_helper'

class ContentItemCondosControllerTest < ActionController::TestCase
  setup do
    @content_item_condo = content_item_condos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_item_condos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_item_condo" do
    assert_difference('ContentItemCondo.count') do
      post :create, content_item_condo: { context: @content_item_condo.context, description: @content_item_condo.description, title: @content_item_condo.title }
    end

    assert_redirected_to content_item_condo_path(assigns(:content_item_condo))
  end

  test "should show content_item_condo" do
    get :show, id: @content_item_condo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_item_condo
    assert_response :success
  end

  test "should update content_item_condo" do
    put :update, id: @content_item_condo, content_item_condo: { context: @content_item_condo.context, description: @content_item_condo.description, title: @content_item_condo.title }
    assert_redirected_to content_item_condo_path(assigns(:content_item_condo))
  end

  test "should destroy content_item_condo" do
    assert_difference('ContentItemCondo.count', -1) do
      delete :destroy, id: @content_item_condo
    end

    assert_redirected_to content_item_condos_path
  end
end
