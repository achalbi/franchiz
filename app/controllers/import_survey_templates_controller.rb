class ImportSurveyTemplatesController < ApplicationController
  # before_action :set_import_survey_template, only: [:show, :edit, :update, :destroy]
  before_action :set_business, only: [:new, :create]

  # GET /import_survey_templates
  # GET /import_survey_templates.json
  def index
    @import_survey_templates = ImportSurveyTemplate.all
  end

  # GET /import_survey_templates/1
  # GET /import_survey_templates/1.json
  def show
    @survey_template = SurveyTemplate.find(params[:id])
  end

  # GET /import_survey_templates/new
  def new
    @import_survey_templates = []
    @import_survey_templates.concat(System.first.survey_templates)
    @import_survey_templates.concat(@business.survey_templates)
  end

  # GET /import_survey_templates/1/edit
  def edit
  end

  # POST /import_survey_templates
  # POST /import_survey_templates.json
  def create
    @survey_template = SurveyTemplate.find(params[:survey_template])
    @new_survey_template = @survey_template.amoeba_dup
    @new_survey_template.surveyable = @business
    respond_to do |format|
      if @new_survey_template.save
        format.html { redirect_to @new_survey_template, notice: 'Import survey template was successfully created.' }
       # format.json { render :show, status: :created, location: @import_survey_template }
      else
        format.html { render :new }
       # format.json { render json: @import_survey_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_survey_templates/1
  # PATCH/PUT /import_survey_templates/1.json
  def update
    respond_to do |format|
      if @import_survey_template.update(import_survey_template_params)
        format.html { redirect_to @import_survey_template, notice: 'Import survey template was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_survey_template }
      else
        format.html { render :edit }
        format.json { render json: @import_survey_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_survey_templates/1
  # DELETE /import_survey_templates/1.json
  def destroy
    @import_survey_template.destroy
    respond_to do |format|
      format.html { redirect_to import_survey_templates_url, notice: 'Import survey template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_business
      if params[:business_id] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ 
        @business = Business.find(params[:business_id])
      else
        @business = Business.find_by(website: params[:business_id])
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_import_survey_template
      @import_survey_template = ImportSurveyTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_survey_template_params
      params.fetch(:import_survey_template, {})
    end
end
