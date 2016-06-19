class InquiryQnAsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create], raise: false
  before_action :set_inquiry_qna, only: [:show, :destroy]
  before_action :set_business, only: [:new, :create, :edit, :update]
  before_action :set_inquiry, only: [:new, :create, :edit, :update]
  before_action :edit_if_ans_exist, only: [:new]

    layout Proc.new { |controller| logged_in? ? 'application' : 'application_ns' }

  # GET /inquiry_qnas
  # GET /inquiry_qnas.json
  def index
  #  @inquiry_qnas = InquiryQna.all
  end

  # GET /inquiry_qnas/1
  # GET /inquiry_qnas/1.json
  def show
  end

  # GET /inquiry_qnas/new
  def new
    @inquiry.incomplete!
    @questions = @business.inquiry_questions
    if @questions.blank?
      @inquiry.complete!
      redirect_to thanks_welcome_path
    end
    @inquiry_qna = InquiryQna.new
  end

  # GET /inquiry_qnas/1/edit
  def edit
  end

  # POST /inquiry_qnas
  # POST /inquiry_qnas.json
  def create
    @inquiry_qna = InquiryQna.new(inquiry_qna_params)
    respond_to do |format|
      if @business.update(@inquiry_qna.business)
        @inquiry.complete!
        UserMailer.welcome_email(@business, @inquiry).deliver_later
        format.html { redirect_to @inquiry, notice: 'Inquiry request created. we would get back to you, Thank you. ' }
        format.json { render :show, status: :created, location: @inquiry_qna }
      else
        format.html { render :new }
        format.json { render json: @inquiry_qna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiry_qnas/1
  # PATCH/PUT /inquiry_qnas/1.json
  def update
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to @inquiry, notice: 'Inquiry form was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiry_qna }
      else
        format.html { render :edit }
        format.json { render json: @inquiry_qna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiry_qnas/1
  # DELETE /inquiry_qnas/1.json
  def destroy
    @inquiry_qna.destroy
    respond_to do |format|
      format.html { redirect_to inquiry_qnas_url, notice: 'Inquiry qna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_qna
      @inquiry_qna = InquiryQna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_qna_params
      params.require(:inquiry_qna).permit(business: [:id, inquiry_questions_attributes: [:id, inquiry_answers_attributes: [:id, :answer, :inquiry_id]]])
    end
    
    def inquiry_params
      params.require(:inquiry).permit( inquiry_answers_attributes: [:id, :answer, inquiry_question_attributes: [:id]])
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
    
    def edit_if_ans_exist
      if @inquiry.inquiry_answers.exists?
        redirect_to edit_business_inquiry_inquiry_qn_a_path(@business,@inquiry,0)
      end
    end
end
