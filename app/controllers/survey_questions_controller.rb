class SurveyQuestionsController < ApplicationController
  before_action :set_survey_question, only: [:show, :edit, :update, :destroy]
  before_action :set_business, only: [:new, :create]


  # GET /survey_questions
  # GET /survey_questions.json
  def index
    @survey_questions = SurveyQuestion.all
  end

  # GET /survey_questions/1
  # GET /survey_questions/1.json
  def show
  end

  # GET /survey_questions/new
  def new
  #  @survey_question = SurveyQuestion.new
    @survey_question = @business.survey_questions.build
    if params[:global]
      @survey_question.global = true
    end
    render layout: false
  end

  # GET /survey_questions/1/edit
  def edit
    render layout: false
  end

  # POST /survey_questions
  # POST /survey_questions.json
  def create
    @survey_question = SurveyQuestion.new(survey_question_params)

    respond_to do |format|
      if @survey_question.save
        format.js { render "location.reload();" }
        format.html { redirect_to :back, notice: 'Survey question was successfully created.' }
        format.json { render :show, status: :created, location: @survey_question }
      else
        format.html { render :new }
        format.json { render json: @survey_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_questions/1
  # PATCH/PUT /survey_questions/1.json
  def update
    respond_to do |format|
      if @survey_question.update(survey_question_params)
        format.html { redirect_to @survey_question.business, notice: 'Survey question was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_question }
      else
        format.html { render :edit }
        format.json { render json: @survey_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_questions/1
  # DELETE /survey_questions/1.json
  def destroy
    biz_id = @survey_question.business.id
    @survey_question.destroy
    respond_to do |format|
      format.html { redirect_to business_path(biz_id), notice: 'Survey question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_question
      @survey_question = SurveyQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_question_params
      params.require(:survey_question).permit(:title, :business_id, :global)
    end
    
    def set_business
      if params[:business_id] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ 
        @business = Business.find(params[:business_id])
      else
        @business = Business.find_by(website: params[:business_id])
      end
    end
end
