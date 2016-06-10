require 'test_helper'

class Business::InquiryBasicsControllerTest < ActionController::TestCase
  setup do
    @business_inquiry_basic = business_inquiry_basics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_inquiry_basics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_inquiry_basic" do
    assert_difference('Business::InquiryBasic.count') do
      post :create, business_inquiry_basic: { req_token: @business_inquiry_basic.req_token }
    end

    assert_redirected_to business_inquiry_basic_path(assigns(:business_inquiry_basic))
  end

  test "should show business_inquiry_basic" do
    get :show, id: @business_inquiry_basic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_inquiry_basic
    assert_response :success
  end

  test "should update business_inquiry_basic" do
    patch :update, id: @business_inquiry_basic, business_inquiry_basic: { req_token: @business_inquiry_basic.req_token }
    assert_redirected_to business_inquiry_basic_path(assigns(:business_inquiry_basic))
  end

  test "should destroy business_inquiry_basic" do
    assert_difference('Business::InquiryBasic.count', -1) do
      delete :destroy, id: @business_inquiry_basic
    end

    assert_redirected_to business_inquiry_basics_path
  end
end
