require 'test_helper'

class SurveyUserAnswersControllerTest < ActionController::TestCase
  setup do
    @survey_user_answer = survey_user_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_user_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_user_answer" do
    assert_difference('SurveyUserAnswer.count') do
      post :create, survey_user_answer: {  }
    end

    assert_redirected_to survey_user_answer_path(assigns(:survey_user_answer))
  end

  test "should show survey_user_answer" do
    get :show, id: @survey_user_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_user_answer
    assert_response :success
  end

  test "should update survey_user_answer" do
    patch :update, id: @survey_user_answer, survey_user_answer: {  }
    assert_redirected_to survey_user_answer_path(assigns(:survey_user_answer))
  end

  test "should destroy survey_user_answer" do
    assert_difference('SurveyUserAnswer.count', -1) do
      delete :destroy, id: @survey_user_answer
    end

    assert_redirected_to survey_user_answers_path
  end
end
