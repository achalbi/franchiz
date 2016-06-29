require 'test_helper'

class ImportSurveysControllerTest < ActionController::TestCase
  setup do
    @import_survey = import_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_survey" do
    assert_difference('ImportSurvey.count') do
      post :create, import_survey: {  }
    end

    assert_redirected_to import_survey_path(assigns(:import_survey))
  end

  test "should show import_survey" do
    get :show, id: @import_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @import_survey
    assert_response :success
  end

  test "should update import_survey" do
    patch :update, id: @import_survey, import_survey: {  }
    assert_redirected_to import_survey_path(assigns(:import_survey))
  end

  test "should destroy import_survey" do
    assert_difference('ImportSurvey.count', -1) do
      delete :destroy, id: @import_survey
    end

    assert_redirected_to import_surveys_path
  end
end
