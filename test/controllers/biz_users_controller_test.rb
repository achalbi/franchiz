require 'test_helper'

class BizUsersControllerTest < ActionController::TestCase
  setup do
    @biz_user = biz_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biz_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biz_user" do
    assert_difference('BizUser.count') do
      post :create, biz_user: { business_id: @biz_user.business_id, email: @biz_user.email, fname: @biz_user.fname, lname: @biz_user.lname, mobile: @biz_user.mobile, password: @biz_user.password, salutation: @biz_user.salutation }
    end

    assert_redirected_to biz_user_path(assigns(:biz_user))
  end

  test "should show biz_user" do
    get :show, id: @biz_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biz_user
    assert_response :success
  end

  test "should update biz_user" do
    patch :update, id: @biz_user, biz_user: { business_id: @biz_user.business_id, email: @biz_user.email, fname: @biz_user.fname, lname: @biz_user.lname, mobile: @biz_user.mobile, password: @biz_user.password, salutation: @biz_user.salutation }
    assert_redirected_to biz_user_path(assigns(:biz_user))
  end

  test "should destroy biz_user" do
    assert_difference('BizUser.count', -1) do
      delete :destroy, id: @biz_user
    end

    assert_redirected_to biz_users_path
  end
end
