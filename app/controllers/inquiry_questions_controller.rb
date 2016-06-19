class InquiryQuestionsController < ApplicationController
  before_action :set_inquiry_question, only: [:show, :edit, :update, :destroy]
  before_action :set_business, only: [:new, :create, :index]

  # GET /inquiry_questions
  # GET /inquiry_questions.json
  def index
    @inquiry_questions = @business.inquiry_questions
  end

  # GET /inquiry_questions/1
  # GET /inquiry_questions/1.json
  def show
  end

  # GET /inquiry_questions/new
  def new
    
    @inquiry_question = @business.inquiry_questions.build
    render layout: false
  end

  # GET /inquiry_questions/1/edit
  def edit
    render layout: false
  end

  # POST /inquiry_questions
  # POST /inquiry_questions.json
  def create
    @inquiry_question = InquiryQuestion.new(inquiry_question_params)

    respond_to do |format|
      if @inquiry_question.save
        format.html { redirect_to @business, notice: 'Inquiry question was successfully created.' }
        format.json { render :show, status: :created, location: @inquiry_question }
      else
        format.html { render :new }
        format.json { render json: @inquiry_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiry_questions/1
  # PATCH/PUT /inquiry_questions/1.json
  def update
    respond_to do |format|
      if @inquiry_question.update(inquiry_question_params)
        format.html { redirect_to @inquiry_question.business, notice: 'Inquiry question was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiry_question.business }
      else
        format.html { render :edit }
        format.json { render json: @inquiry_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiry_questions/1
  # DELETE /inquiry_questions/1.json
  def destroy
    biz_id = @inquiry_question.business.id
    @inquiry_question.destroy
    respond_to do |format|
      format.html { redirect_to business_path(biz_id), notice: 'Inquiry question was successfully destroyed.' }
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
    def set_inquiry_question
      @inquiry_question = InquiryQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_question_params
      params.require(:inquiry_question).permit(:title, :business_id)
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def business_inquiry_question_params
      params.require(:inquiry_question).permit(:title, :business_id)
    end
end
