class SurveyItemsController < ApplicationController
  before_action :set_survey_item, only: [:show, :edit, :update, :destroy]

  # GET /survey_items
  # GET /survey_items.json
  def index
    @survey_items = SurveyItem.all
  end

  # GET /survey_items/1
  # GET /survey_items/1.json
  def show
  end

  # GET /survey_items/new
  def new
    @survey_item = SurveyItem.new
  end

  # GET /survey_items/1/edit
  def edit
  end

  # POST /survey_items
  # POST /survey_items.json
  def create
    @survey_item = SurveyItem.new(survey_item_params)

    respond_to do |format|
      if @survey_item.save
        format.html { redirect_to @survey_item, notice: 'Survey item was successfully created.' }
        format.json { render :show, status: :created, location: @survey_item }
      else
        format.html { render :new }
        format.json { render json: @survey_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_items/1
  # PATCH/PUT /survey_items/1.json
  def update
    respond_to do |format|
      if @survey_item.update(survey_item_params)
        format.js {head :ok }
        format.html { redirect_to @survey_item, notice: 'Survey item was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_item }
      else
        format.html { render :edit }
        format.json { render json: @survey_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_items/1
  # DELETE /survey_items/1.json
  def destroy
    @survey_item.destroy
    respond_to do |format|
      format.html { redirect_to survey_items_url, notice: 'Survey item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_item
      @survey_item = SurveyItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_item_params
      params.require(:survey_item).permit(:survey_question_id, :survey_user_answer_id, :survey_biz_user_answer_id, :inquiry_id, :visible, :status)
    end
end
