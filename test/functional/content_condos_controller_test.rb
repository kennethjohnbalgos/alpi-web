require 'test_helper'

class ContentCondosControllerTest < ActionController::TestCase
  setup do
    @content_condo = content_condos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_condos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_condo" do
    assert_difference('ContentCondo.count') do
      post :create, content_condo: { context: @content_condo.context, description: @content_condo.description, title: @content_condo.title }
    end

    assert_redirected_to content_condo_path(assigns(:content_condo))
  end

  test "should show content_condo" do
    get :show, id: @content_condo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_condo
    assert_response :success
  end

  test "should update content_condo" do
    put :update, id: @content_condo, content_condo: { context: @content_condo.context, description: @content_condo.description, title: @content_condo.title }
    assert_redirected_to content_condo_path(assigns(:content_condo))
  end

  test "should destroy content_condo" do
    assert_difference('ContentCondo.count', -1) do
      delete :destroy, id: @content_condo
    end

    assert_redirected_to content_condos_path
  end
end
