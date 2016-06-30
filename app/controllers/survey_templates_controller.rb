class SurveyTemplatesController < ApplicationController
  before_action :set_survey_template, only: [:show, :edit, :update, :destroy]
  before_action :set_polymorphic_ref, only: [:index, :new, :create, :edit, :show]

  # GET /survey_templates
  # GET /survey_templates.json
  def index
    @survey_templates = @poly_ref.survey_templates
  end

  # GET /survey_templates/1
  # GET /survey_templates/1.json
  def show
  end

  # GET /survey_templates/new
  def new
    @survey_template = @poly_ref.survey_templates.build
  end

  # GET /survey_templates/1/edit
  def edit
  end

  # POST /survey_templates
  # POST /survey_templates.json
  def create
    @survey_template = SurveyTemplate.new(survey_template_params)

    respond_to do |format|
      if @survey_template.save
        format.html { redirect_to polymorphic_path([@poly_ref, @survey_template]), notice: 'Survey template was successfully created.' }
        format.json { render :show, status: :created, location: @survey_template }
      else
        format.html { render :new }
        format.json { render json: @survey_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_templates/1
  # PATCH/PUT /survey_templates/1.json
  def update
    respond_to do |format|
      if @survey_template.update(survey_template_params)
        format.html { redirect_to @survey_template, notice: 'Survey template was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_template }
      else
        format.html { render :edit }
        format.json { render json: @survey_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_templates/1
  # DELETE /survey_templates/1.json
  def destroy
    @ref =  @survey_template.surveyable
    @survey_template.destroy
    respond_to do |format|
      format.html { redirect_to @ref, notice: 'Survey template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_template
      @survey_template = SurveyTemplate.find(params[:id])
    end

    def set_polymorphic_ref
        if params[:system_id]
          @poly_ref = @system = System.find(params[:system_id])
        elsif params[:business_id]
          @poly_ref = @business = Business.find(params[:business_id])
        end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_template_params
      params.require(:survey_template).permit(:title, :description, :surveyable_id, :surveyable_type)
    end
end
