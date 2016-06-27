class SurveyItemTemplatesController < ApplicationController
  before_action :set_survey_item_template, only: [:show, :edit, :update, :destroy]
  before_action :set_survey_item_category_template, only: [:new]

  # GET /survey_item_templates
  # GET /survey_item_templates.json
  def index
    @survey_item_templates = SurveyItemTemplate.all
  end

  # GET /survey_item_templates/1
  # GET /survey_item_templates/1.json
  def show
  end

  # GET /survey_item_templates/new
  def new
    @survey_item_template = @survey_item_category_template.survey_item_templates.build
  end

  # GET /survey_item_templates/1/edit
  def edit
    @survey_template = @survey_item_template.survey_item_category_template.survey_template
  end

  # POST /survey_item_templates
  # POST /survey_item_templates.json
  def create
    @survey_item_template = SurveyItemTemplate.new(survey_item_template_params)

    respond_to do |format|
      if @survey_item_template.save
        format.html { redirect_to @survey_item_template.survey_item_category_template.survey_template, notice: 'Survey item template was successfully created.' }
        format.json { render :show, status: :created, location: @survey_item_template }
      else
        format.html { render :new }
        format.json { render json: @survey_item_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_item_templates/1
  # PATCH/PUT /survey_item_templates/1.json
  def update
    respond_to do |format|
      if @survey_item_template.update(survey_item_template_params)
        format.html { redirect_to @survey_item_template.survey_item_category_template.survey_template, notice: 'Survey item template was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_item_template }
      else
        format.html { render :edit }
        format.json { render json: @survey_item_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_item_templates/1
  # DELETE /survey_item_templates/1.json
  def destroy
    @survey_item_template.destroy
    respond_to do |format|
      format.html { redirect_to survey_item_templates_url, notice: 'Survey item template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_item_template
      @survey_item_template = SurveyItemTemplate.find(params[:id])
    end

    def set_survey_item_category_template
      @survey_item_category_template = SurveyItemCategoryTemplate.find(params[:survey_item_category_template_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_item_template_params
      params.require(:survey_item_template).permit(:question_title, :description, :survey_template_id, :survey_item_category_template_id, {survey_data_type_ids: []})
    end
end
