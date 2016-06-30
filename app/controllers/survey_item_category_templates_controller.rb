class SurveyItemCategoryTemplatesController < ApplicationController
  before_action :set_survey_item_category_template, only: [:show, :edit, :update, :destroy]
  before_action :set_survey_template, only: [:index, :new]

  # GET /survey_item_category_templates
  # GET /survey_item_category_templates.json
  def index
    @survey_item_category_templates = SurveyItemCategoryTemplate.all
  end

  # GET /survey_item_category_templates/1
  # GET /survey_item_category_templates/1.json
  def show
  end

  # GET /survey_item_category_templates/new
  def new
    @survey_item_category_template = @survey_template.survey_item_category_templates.build
  end

  # GET /survey_item_category_templates/1/edit
  def edit
  end

  # POST /survey_item_category_templates
  # POST /survey_item_category_templates.json
  def create
    @survey_item_category_template = SurveyItemCategoryTemplate.new(survey_item_category_template_params)

    respond_to do |format|
      if @survey_item_category_template.save
        format.html { redirect_to @survey_item_category_template.survey_template, notice: 'Survey item category template was successfully created.' }
      #  format.json { render :show, status: :created, location: @survey_item_category_template }
      else
        format.html { render :new }
      #  format.json { render json: @survey_item_category_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_item_category_templates/1
  # PATCH/PUT /survey_item_category_templates/1.json
  def update
    respond_to do |format|
      if @survey_item_category_template.update(survey_item_category_template_params)
        format.html { redirect_to @survey_item_category_template, notice: 'Survey item category template was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_item_category_template }
      else
        format.html { render :edit }
        format.json { render json: @survey_item_category_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_item_category_templates/1
  # DELETE /survey_item_category_templates/1.json
  def destroy
    survey_template = @survey_item_category_template.survey_template
    @survey_item_category_template.destroy
    respond_to do |format|
      format.html { redirect_to polymorphic_path([survey_template.surveyable, survey_template]), notice: 'Survey item category template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_item_category_template
      @survey_item_category_template = SurveyItemCategoryTemplate.find(params[:id])
    end

    def set_survey_template
      @survey_template = SurveyTemplate.find(params[:survey_template_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_item_category_template_params
      params.require(:survey_item_category_template).permit(:title, :survey_template_id)
    end
end
