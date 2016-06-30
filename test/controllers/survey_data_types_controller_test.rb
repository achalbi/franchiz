require 'test_helper'

class SurveyDataTypesControllerTest < ActionController::TestCase
  setup do
    @survey_data_type = survey_data_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_data_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_data_type" do
    assert_difference('SurveyDataType.count') do
      post :create, survey_data_type: { title: @survey_data_type.title }
    end

    assert_redirected_to survey_data_type_path(assigns(:survey_data_type))
  end

  test "should show survey_data_type" do
    get :show, id: @survey_data_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_data_type
    assert_response :success
  end

  test "should update survey_data_type" do
    patch :update, id: @survey_data_type, survey_data_type: { title: @survey_data_type.title }
    assert_redirected_to survey_data_type_path(assigns(:survey_data_type))
  end

  test "should destroy survey_data_type" do
    assert_difference('SurveyDataType.count', -1) do
      delete :destroy, id: @survey_data_type
    end

    assert_redirected_to survey_data_types_path
  end
end
