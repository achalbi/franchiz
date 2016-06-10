class InquiryAnswersController < ApplicationController
  before_action :set_inquiry_answer, only: [:show, :edit, :update, :destroy]

  # GET /inquiry_answers
  # GET /inquiry_answers.json
  def index
    @inquiry_answers = InquiryAnswer.all
  end

  # GET /inquiry_answers/1
  # GET /inquiry_answers/1.json
  def show
  end

  # GET /inquiry_answers/new
  def new
    @inquiry_answer = InquiryAnswer.new
  end

  # GET /inquiry_answers/1/edit
  def edit
  end

  # POST /inquiry_answers
  # POST /inquiry_answers.json
  def create
    @inquiry_answer = InquiryAnswer.new(inquiry_answer_params)

    respond_to do |format|
      if @inquiry_answer.save
        format.html { redirect_to @inquiry_answer, notice: 'Inquiry answer was successfully created.' }
        format.json { render :show, status: :created, location: @inquiry_answer }
      else
        format.html { render :new }
        format.json { render json: @inquiry_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiry_answers/1
  # PATCH/PUT /inquiry_answers/1.json
  def update
    respond_to do |format|
      if @inquiry_answer.update(inquiry_answer_params)
        format.html { redirect_to @inquiry_answer, notice: 'Inquiry answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiry_answer }
      else
        format.html { render :edit }
        format.json { render json: @inquiry_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiry_answers/1
  # DELETE /inquiry_answers/1.json
  def destroy
    @inquiry_answer.destroy
    respond_to do |format|
      format.html { redirect_to inquiry_answers_url, notice: 'Inquiry answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_answer
      @inquiry_answer = InquiryAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_answer_params
      params.require(:inquiry_answer).permit(:answer, :inquiry_question_id, :inquiry_id)
    end
end
