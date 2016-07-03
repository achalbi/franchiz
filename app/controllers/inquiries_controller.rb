class InquiriesController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :show], raise: false
  before_action :set_inquiry, only: [:show, :edit, :update, :destroy]
  before_action :set_business, only: [:new, :index]

  layout proc {logged_in? ? 'application' : 'application_ns' }

  # GET /inquiries
  # GET /inquiries.json
  def index
    @locations = Inquiry.where(business_id: @business.id).includes(:location).collect{|x| x.location.city unless x.location.nil?}.uniq
    @inquiries, session[:status_filter]  = Inquiry
      .status_filter(params[:status_filter], session[:status_filter],
      @business.id, params[:page])
  end

  # GET /inquiries/1
  # GET /inquiries/1.json
  def show
    @business = @inquiry.business
    # @business.inquiry_questions.each do |q|
    #  q.inquiry_answers
    # end
  end

  # GET /inquiries/new
  def new
    @inquiry = @business.inquiries.build(token:  @business.name.first(3) + '-' + @business.id.to_s + '-inq-' + @business.inquiries.count.to_s)
    @user = @inquiry.build_user
    @user.build_address
  end

  # GET /inquiries/1/edit
  def edit
  end

  # POST /inquiries
  # POST /inquiries.json
  def create
    @inquiry = Inquiry.new(inquiry_params)

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to new_inquiry_location_path(@inquiry), notice: 'Contact details submitted.' }
      #  format.json { render :show, status: :created, location: @inquiry }
      else
        format.html { render :new }
      #  format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiries/1
  # PATCH/PUT /inquiries/1.json
  def update
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to @inquiry, notice: 'Inquiry was successfully updated.' }
      #  format.json { render :show, status: :ok, location: @inquiry }
      else
        format.html { render :edit }
      #  format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiries/1
  # DELETE /inquiries/1.json
  def destroy
    @inquiry.destroy
    respond_to do |format|
      format.html { redirect_to inquiries_url, notice: 'Inquiry was successfully destroyed.' }
    #  format.json { head :no_content }
    end
  end

  # Get locality based on city
  def get_locality
    Location.where(city: params[city_filter]).select('distinct address')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
      #  unless @inquiry.business.id == session[:business_id]
      #    redirect_to '/businesses/'+session[:business_id].to_s
      #  end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_params
      params.require(:inquiry).permit(:token, :business_id, user_attributes: [:id, :salutation, :fname, :lname, :email, :mobile, address_attributes: [:id, :line1, :line2, :doorno, :street, :city, :state, :country, :pincode, :latitude, :longitude]])
    end

    def set_business
      #  unless params[:business_id] == session[:business_id].to_s
      #    redirect_to '/businesses/'+session[:business_id].to_s
      #  end
      if params[:business_id] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
        @business = Business.find(params[:business_id])
      else
        @business = Business.find_by(website: params[:business_id])
      end
    end
end
