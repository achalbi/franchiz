require 'test_helper'

class InquiryQnAsControllerTest < ActionController::TestCase
  setup do
    @inquiry_qna = inquiry_qnas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquiry_qnas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inquiry_qna" do
    assert_difference('InquiryQna.count') do
      post :create, inquiry_qna: {  }
    end

    assert_redirected_to inquiry_qna_path(assigns(:inquiry_qna))
  end

  test "should show inquiry_qna" do
    get :show, id: @inquiry_qna
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inquiry_qna
    assert_response :success
  end

  test "should update inquiry_qna" do
    patch :update, id: @inquiry_qna, inquiry_qna: {  }
    assert_redirected_to inquiry_qna_path(assigns(:inquiry_qna))
  end

  test "should destroy inquiry_qna" do
    assert_difference('InquiryQna.count', -1) do
      delete :destroy, id: @inquiry_qna
    end

    assert_redirected_to inquiry_qnas_path
  end
end
