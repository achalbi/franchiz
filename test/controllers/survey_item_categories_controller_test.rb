require 'test_helper'

class SurveyItemCategoriesControllerTest < ActionController::TestCase
  setup do
    @survey_item_category = survey_item_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_item_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_item_category" do
    assert_difference('SurveyItemCategory.count') do
      post :create, survey_item_category: { categorisable_id: @survey_item_category.categorisable_id, categorisable_type: @survey_item_category.categorisable_type, title: @survey_item_category.title }
    end

    assert_redirected_to survey_item_category_path(assigns(:survey_item_category))
  end

  test "should show survey_item_category" do
    get :show, id: @survey_item_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_item_category
    assert_response :success
  end

  test "should update survey_item_category" do
    patch :update, id: @survey_item_category, survey_item_category: { categorisable_id: @survey_item_category.categorisable_id, categorisable_type: @survey_item_category.categorisable_type, title: @survey_item_category.title }
    assert_redirected_to survey_item_category_path(assigns(:survey_item_category))
  end

  test "should destroy survey_item_category" do
    assert_difference('SurveyItemCategory.count', -1) do
      delete :destroy, id: @survey_item_category
    end

    assert_redirected_to survey_item_categories_path
  end
end
