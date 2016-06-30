require 'test_helper'

class SurveyBizUserAnswersControllerTest < ActionController::TestCase
  setup do
    @survey_biz_user_answer = survey_biz_user_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_biz_user_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_biz_user_answer" do
    assert_difference('SurveyBizUserAnswer.count') do
      post :create, survey_biz_user_answer: {  }
    end

    assert_redirected_to survey_biz_user_answer_path(assigns(:survey_biz_user_answer))
  end

  test "should show survey_biz_user_answer" do
    get :show, id: @survey_biz_user_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_biz_user_answer
    assert_response :success
  end

  test "should update survey_biz_user_answer" do
    patch :update, id: @survey_biz_user_answer, survey_biz_user_answer: {  }
    assert_redirected_to survey_biz_user_answer_path(assigns(:survey_biz_user_answer))
  end

  test "should destroy survey_biz_user_answer" do
    assert_difference('SurveyBizUserAnswer.count', -1) do
      delete :destroy, id: @survey_biz_user_answer
    end

    assert_redirected_to survey_biz_user_answers_path
  end
end
