class SurveyBizUserAnswersController < ApplicationController
  skip_before_action :require_login, only: [:index, :update, :show], raise: false
  before_action :set_survey_biz_user_answer, only: [:show, :edit, :update, :destroy]
  before_action :set_survey, only: [:index]

  # GET /survey_biz_user_answers
  # GET /survey_biz_user_answers.json
  def index
  end

  # GET /survey_biz_user_answers/1
  # GET /survey_biz_user_answers/1.json
  def show
  end

  # GET /survey_biz_user_answers/new
  def new
    @survey_biz_user_answer = SurveyBizUserAnswer.new
  end

  # GET /survey_biz_user_answers/1/edit
  def edit
  end

  # POST /survey_biz_user_answers
  # POST /survey_biz_user_answers.json
  def create
    @survey_biz_user_answer = SurveyBizUserAnswer.new(survey_biz_user_answer_params)

    respond_to do |format|
      if @survey_biz_user_answer.save
        format.html { redirect_to @survey_biz_user_answer, notice: 'Survey biz user answer was successfully created.' }
        format.json { render :show, status: :created, location: @survey_biz_user_answer }
      else
        format.html { render :new }
        format.json { render json: @survey_biz_user_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_biz_user_answers/1
  # PATCH/PUT /survey_biz_user_answers/1.json
  def update
    respond_to do |format|
      if @survey_biz_user_answer.update(survey_biz_user_answer_params)
        format.js { render :update, notice: 'Survey user answer was successfully updated.' }
        format.html { redirect_to @survey_biz_user_answer, notice: 'Survey biz user answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_biz_user_answer }
      else
        format.html { render :edit }
        format.json { render json: @survey_biz_user_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_biz_user_answers/1
  # DELETE /survey_biz_user_answers/1.json
  def destroy
    @survey_biz_user_answer.destroy
    respond_to do |format|
      format.html { redirect_to survey_biz_user_answers_url, notice: 'Survey biz user answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_biz_user_answer
      @survey_biz_user_answer = SurveyBizUserAnswer.find(params[:id])
    end

    def set_survey
      @survey = Survey.find(params[:survey_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_biz_user_answer_params
      params.require(:survey_biz_user_answer).permit(:id, :answer)
    end
end
