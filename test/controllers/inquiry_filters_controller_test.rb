require 'test_helper'

class InquiryFiltersControllerTest < ActionController::TestCase
  setup do
    @inquiry_filter = inquiry_filters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquiry_filters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inquiry_filter" do
    assert_difference('InquiryFilter.count') do
      post :create, inquiry_filter: {  }
    end

    assert_redirected_to inquiry_filter_path(assigns(:inquiry_filter))
  end

  test "should show inquiry_filter" do
    get :show, id: @inquiry_filter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inquiry_filter
    assert_response :success
  end

  test "should update inquiry_filter" do
    patch :update, id: @inquiry_filter, inquiry_filter: {  }
    assert_redirected_to inquiry_filter_path(assigns(:inquiry_filter))
  end

  test "should destroy inquiry_filter" do
    assert_difference('InquiryFilter.count', -1) do
      delete :destroy, id: @inquiry_filter
    end

    assert_redirected_to inquiry_filters_path
  end
end
