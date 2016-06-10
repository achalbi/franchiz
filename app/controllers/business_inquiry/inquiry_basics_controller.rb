class BusinessInquiry::InquiryBasicsController < ApplicationController
  before_action :set_business_inquiry_basic, only: [:show, :edit, :update, :destroy]

  # GET /business/inquiry_basics
  # GET /business/inquiry_basics.json
  def index
    @business_inquiry_basics = BusinessInquiry::InquiryBasic.all
  end

  # GET /business/inquiry_basics/1
  # GET /business/inquiry_basics/1.json
  def show
  end

  # GET /business/inquiry_basics/new
  def new
    @business_inquiry_basic = BusinessInquiry::InquiryBasic.new
  end

  # GET /business/inquiry_basics/1/edit
  def edit
  end

  # POST /business/inquiry_basics
  # POST /business/inquiry_basics.json
  def create
    @business_inquiry_basic = BusinessInquiry::InquiryBasic.new(business_inquiry_basic_params)

    respond_to do |format|
      if @business_inquiry_basic.save
        format.html { redirect_to inquiry_basic_path(@business_inquiry_basic), notice: 'Inquiry basic was successfully created.' }
        format.json { render :show, status: :created, location: inquiry_basic_path(@business_inquiry_basic) }
      else
        format.html { render :new }
        format.json { render json: @business_inquiry_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business/inquiry_basics/1
  # PATCH/PUT /business/inquiry_basics/1.json
  def update
    respond_to do |format|
      if @business_inquiry_basic.update(business_inquiry_basic_params)
        format.html { redirect_to inquiry_basic_path(@business_inquiry_basic), notice: 'Inquiry basic was successfully updated.' }
        format.json { render :show, status: :ok, location: inquiry_basic_path(@business_inquiry_basic) }
      else
        format.html { render :edit }
        format.json { render json: @business_inquiry_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business/inquiry_basics/1
  # DELETE /business/inquiry_basics/1.json
  def destroy
    @business_inquiry_basic.destroy
    respond_to do |format|
      format.html { redirect_to business_inquiry_basics_url, notice: 'Inquiry basic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_inquiry_basic
      @business_inquiry_basic = BusinessInquiry::InquiryBasic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_inquiry_basic_params
      params.require(:business_inquiry_inquiry_basic).permit(:req_token)
    end
end
