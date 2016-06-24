class SurveyItemCategoriesController < ApplicationController
  before_action :set_survey_item_category, only: [:show, :edit, :update, :destroy]

  # GET /survey_item_categories
  # GET /survey_item_categories.json
  def index
    @survey_item_categories = SurveyItemCategory.all
  end

  # GET /survey_item_categories/1
  # GET /survey_item_categories/1.json
  def show
  end

  # GET /survey_item_categories/new
  def new
    @survey_item_category = SurveyItemCategory.new
  end

  # GET /survey_item_categories/1/edit
  def edit
  end

  # POST /survey_item_categories
  # POST /survey_item_categories.json
  def create
    @survey_item_category = SurveyItemCategory.new(survey_item_category_params)

    respond_to do |format|
      if @survey_item_category.save
        format.html { redirect_to @survey_item_category, notice: 'Survey item category was successfully created.' }
        format.json { render :show, status: :created, location: @survey_item_category }
      else
        format.html { render :new }
        format.json { render json: @survey_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_item_categories/1
  # PATCH/PUT /survey_item_categories/1.json
  def update
    respond_to do |format|
      if @survey_item_category.update(survey_item_category_params)
        format.html { redirect_to @survey_item_category, notice: 'Survey item category was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_item_category }
      else
        format.html { render :edit }
        format.json { render json: @survey_item_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_item_categories/1
  # DELETE /survey_item_categories/1.json
  def destroy
    @survey_item_category.destroy
    respond_to do |format|
      format.html { redirect_to survey_item_categories_url, notice: 'Survey item category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_item_category
      @survey_item_category = SurveyItemCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_item_category_params
      params.require(:survey_item_category).permit(:title, :categorisable_id, :categorisable_type)
    end
end
