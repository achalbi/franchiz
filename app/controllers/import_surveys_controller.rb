class ImportSurveysController < ApplicationController
#  before_action :set_import_survey, only: [:show, :edit, :update, :destroy]
  before_action :set_inquiry, only: [:new, :create]

  # GET /import_surveys
  # GET /import_surveys.json
  def index
    @import_surveys = ImportSurvey.all
  end

  # GET /import_surveys/1
  # GET /import_surveys/1.json
  def show
    @survey_template = SurveyTemplate.find(params[:id])
  end

  # GET /import_surveys/new
  def new
    @survey_templates = @inquiry.business.survey_templates
  end

  # GET /import_surveys/1/edit
  def edit
  end

  # POST /import_surveys
  # POST /import_surveys.json
  def create
    @survey_template = SurveyTemplate.find(params[:id])
    @survey = Survey.new
    @survey = @survey_template.attributes
    @import_survey = ImportSurvey.new(import_survey_params)

    respond_to do |format|
      if @import_survey.save
        format.html { redirect_to @import_survey, notice: 'Import survey was successfully created.' }
        format.json { render :show, status: :created, location: @import_survey }
      else
        format.html { render :new }
        format.json { render json: @import_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_surveys/1
  # PATCH/PUT /import_surveys/1.json
  def update
    respond_to do |format|
      if @import_survey.update(import_survey_params)
        format.html { redirect_to @import_survey, notice: 'Import survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_survey }
      else
        format.html { render :edit }
        format.json { render json: @import_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_surveys/1
  # DELETE /import_surveys/1.json
  def destroy
    @import_survey.destroy
    respond_to do |format|
      format.html { redirect_to import_surveys_url, notice: 'Import survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_inquiry
        @inquiry = Inquiry.find(params[:inquiry_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_import_survey
      @import_survey = ImportSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_survey_params
      params.fetch(:import_survey, {})
    end
end
