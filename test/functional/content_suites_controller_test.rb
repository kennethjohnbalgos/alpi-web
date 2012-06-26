require 'test_helper'

class ContentSuitesControllerTest < ActionController::TestCase
  setup do
    @content_suite = content_suites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_suites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_suite" do
    assert_difference('ContentSuite.count') do
      post :create, content_suite: { context: @content_suite.context, description: @content_suite.description, title: @content_suite.title }
    end

    assert_redirected_to content_suite_path(assigns(:content_suite))
  end

  test "should show content_suite" do
    get :show, id: @content_suite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_suite
    assert_response :success
  end

  test "should update content_suite" do
    put :update, id: @content_suite, content_suite: { context: @content_suite.context, description: @content_suite.description, title: @content_suite.title }
    assert_redirected_to content_suite_path(assigns(:content_suite))
  end

  test "should destroy content_suite" do
    assert_difference('ContentSuite.count', -1) do
      delete :destroy, id: @content_suite
    end

    assert_redirected_to content_suites_path
  end
end
