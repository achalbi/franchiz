require 'test_helper'

class ImportSurveyTemplatesControllerTest < ActionController::TestCase
  setup do
    @import_survey_template = import_survey_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_survey_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_survey_template" do
    assert_difference('ImportSurveyTemplate.count') do
      post :create, import_survey_template: {  }
    end

    assert_redirected_to import_survey_template_path(assigns(:import_survey_template))
  end

  test "should show import_survey_template" do
    get :show, id: @import_survey_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @import_survey_template
    assert_response :success
  end

  test "should update import_survey_template" do
    patch :update, id: @import_survey_template, import_survey_template: {  }
    assert_redirected_to import_survey_template_path(assigns(:import_survey_template))
  end

  test "should destroy import_survey_template" do
    assert_difference('ImportSurveyTemplate.count', -1) do
      delete :destroy, id: @import_survey_template
    end

    assert_redirected_to import_survey_templates_path
  end
end
