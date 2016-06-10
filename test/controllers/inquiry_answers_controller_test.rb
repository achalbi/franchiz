require 'test_helper'

class InquiryAnswersControllerTest < ActionController::TestCase
  setup do
    @inquiry_answer = inquiry_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inquiry_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inquiry_answer" do
    assert_difference('InquiryAnswer.count') do
      post :create, inquiry_answer: { answer: @inquiry_answer.answer, inquiry_id: @inquiry_answer.inquiry_id, inquiry_question_id: @inquiry_answer.inquiry_question_id }
    end

    assert_redirected_to inquiry_answer_path(assigns(:inquiry_answer))
  end

  test "should show inquiry_answer" do
    get :show, id: @inquiry_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inquiry_answer
    assert_response :success
  end

  test "should update inquiry_answer" do
    patch :update, id: @inquiry_answer, inquiry_answer: { answer: @inquiry_answer.answer, inquiry_id: @inquiry_answer.inquiry_id, inquiry_question_id: @inquiry_answer.inquiry_question_id }
    assert_redirected_to inquiry_answer_path(assigns(:inquiry_answer))
  end

  test "should destroy inquiry_answer" do
    assert_difference('InquiryAnswer.count', -1) do
      delete :destroy, id: @inquiry_answer
    end

    assert_redirected_to inquiry_answers_path
  end
end
