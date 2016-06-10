require 'test_helper'

class InquiryQuestionsControllerTest < ActionController::TestCase
  setup do
    @inquiry_question = inquiry_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquiry_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inquiry_question" do
    assert_difference('InquiryQuestion.count') do
      post :create, inquiry_question: { business_id: @inquiry_question.business_id, title: @inquiry_question.title }
    end

    assert_redirected_to inquiry_question_path(assigns(:inquiry_question))
  end

  test "should show inquiry_question" do
    get :show, id: @inquiry_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inquiry_question
    assert_response :success
  end

  test "should update inquiry_question" do
    patch :update, id: @inquiry_question, inquiry_question: { business_id: @inquiry_question.business_id, title: @inquiry_question.title }
    assert_redirected_to inquiry_question_path(assigns(:inquiry_question))
  end

  test "should destroy inquiry_question" do
    assert_difference('InquiryQuestion.count', -1) do
      delete :destroy, id: @inquiry_question
    end

    assert_redirected_to inquiry_questions_path
  end
end
