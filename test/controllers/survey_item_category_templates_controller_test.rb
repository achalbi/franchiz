require 'test_helper'

class SurveyItemCategoryTemplatesControllerTest < ActionController::TestCase
  setup do
    @survey_item_category_template = survey_item_category_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_item_category_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_item_category_template" do
    assert_difference('SurveyItemCategoryTemplate.count') do
      post :create, survey_item_category_template: { survey_template_id: @survey_item_category_template.survey_template_id, title: @survey_item_category_template.title }
    end

    assert_redirected_to survey_item_category_template_path(assigns(:survey_item_category_template))
  end

  test "should show survey_item_category_template" do
    get :show, id: @survey_item_category_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_item_category_template
    assert_response :success
  end

  test "should update survey_item_category_template" do
    patch :update, id: @survey_item_category_template, survey_item_category_template: { survey_template_id: @survey_item_category_template.survey_template_id, title: @survey_item_category_template.title }
    assert_redirected_to survey_item_category_template_path(assigns(:survey_item_category_template))
  end

  test "should destroy survey_item_category_template" do
    assert_difference('SurveyItemCategoryTemplate.count', -1) do
      delete :destroy, id: @survey_item_category_template
    end

    assert_redirected_to survey_item_category_templates_path
  end
end
