class SurveysController < ApplicationController
  skip_before_action :require_login, only: [:edit, :update], raise: false

  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  before_action :set_inquiry, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_business, only: [:new, :create, :show, :edit]
  before_action :edit_if_survey_exist, only: [:new]
  
  layout proc {logged_in? ? 'application' : 'application_ns' }

  
  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # GET /surveys/new
  def new
    @survey = @inquiry.build_survey

  end

  # GET /surveys/1/edit
  def edit
    
    @business.survey_questions.each do |q|
    si = @survey.survey_items.where(survey_question_id: q.id)
      if si.blank?
        si = @survey.survey_items.build(survey_question_id: q.id, question: q.title)
        si.build_survey_biz_user_answer
        si.build_survey_user_answer
      end
    end
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)
    respond_to do |format|
      if @survey.save
         @inquiry.survey_init!
        format.html { redirect_to business_inquiry_survey_path(@business, @inquiry, @survey), notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        unless logged_in? && (@survey.inquiry.business.biz_users.to_a.include? current_user)
          format.html { redirect_to biz_review_inquiry_survey_workflows_path }
        else
          format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        end
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
      #  unless @survey.inquiry.business.id == session[:business_id]
      #    redirect_to '/businesses/'+session[:business_id].to_s
      #  end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:id, :business_id,  :inquiry_id, survey_items_attributes: [:id, :survey_question_id, :visible, survey_biz_user_answer_attributes: [:id, :answer], survey_user_answer_attributes: [:id, :answer] ])

    end
    
    def set_business
      if params[:business_id] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ 
        @business = Business.find(params[:business_id])
      else
        @business = Business.find_by(website: params[:business_id])
      end
    end
    
    def set_inquiry
      @inquiry = Inquiry.find(params[:inquiry_id])
    end
    
    def edit_if_survey_exist
      if @inquiry.survey.present?
        redirect_to edit_business_inquiry_survey_path(@business,@inquiry,@inquiry.survey)
      end
    end

end
