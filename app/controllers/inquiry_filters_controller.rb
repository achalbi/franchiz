class InquiryFiltersController < ApplicationController
  before_action :set_inquiry_filter, only: [:show, :edit, :update, :destroy]
  before_action :set_business, only: [:view]

  # GET /inquiry_filters
  # GET /inquiry_filters.json
  def index
    @inquiry_filters = InquiryFilter.all
  end

  def view
    @locations = Inquiry.where(business_id: @business.id).includes(:location).collect{|x| x.location.city unless x.location.nil?}.uniq
    @inquiries = Inquiry.where(business_id: @business.id)
    unless params[:status] == ""
      @inquiries = @inquiries.where(workflow_state: params[:status])
    end
    unless params[:city] == ""
      @inquiries = @inquiries.includes(:location).where('locations.city = ?', params[:city]).references(:location)
    end
    unless params[:from_date] == "" || params[:to_date] == ""
      @inquiries = @inquiries.where(created_at: (params[:from_date].to_datetime..params[:to_date].to_datetime))
    else if params[:from_date] == "" && params[:to_date] != ""
            @inquiries = @inquiries.where('inquiries.created_at <= ?', params[:to_date].to_datetime)
        elsif params[:from_date] != "" && params[:to_date] == ""
            @inquiries = @inquiries.where('inquiries.created_at >= ?', params[:from_date].to_datetime)
        end
    end
    @inquiries = @inquiries.page params[:page]
    render 'inquiries/index'
  end

  # GET /inquiry_filters/1
  # GET /inquiry_filters/1.json
  def show
  end

  # GET /inquiry_filters/new
  def new
    @inquiry_filter = InquiryFilter.new
  end

  # GET /inquiry_filters/1/edit
  def edit
  end

  # POST /inquiry_filters
  # POST /inquiry_filters.json
  def create
    @inquiry_filter = InquiryFilter.new(inquiry_filter_params)

    respond_to do |format|
      if @inquiry_filter.save
        format.html { redirect_to @inquiry_filter, notice: 'Inquiry filter was successfully created.' }
        format.json { render :show, status: :created, location: @inquiry_filter }
      else
        format.html { render :new }
        format.json { render json: @inquiry_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiry_filters/1
  # PATCH/PUT /inquiry_filters/1.json
  def update
    respond_to do |format|
      if @inquiry_filter.update(inquiry_filter_params)
        format.html { redirect_to @inquiry_filter, notice: 'Inquiry filter was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiry_filter }
      else
        format.html { render :edit }
        format.json { render json: @inquiry_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiry_filters/1
  # DELETE /inquiry_filters/1.json
  def destroy
    @inquiry_filter.destroy
    respond_to do |format|
      format.html { redirect_to inquiry_filters_url, notice: 'Inquiry filter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_filter
      @inquiry_filter = InquiryFilter.find(params[:id])
    end

    def set_business
      @business = Business.find(params[:business_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_filter_params
      params.fetch(:inquiry_filter, {})
    end
end
