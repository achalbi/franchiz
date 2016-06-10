class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:new, :create, :biz_init], raise: false


  # GET /businesses
  # GET /businesses.json
  def index
    @businesses = Business.all
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
#    @business.host_site = session['host_site']
 #   render layout: false
  end

  # GET /businesses/new
  def new
    @business = Business.new
  #  @business.website = session['host']
    @biz_users = @business.biz_users.build
  #  render layout: false
  end

  # GET /businesses/1/edit
  def edit
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @business = Business.new(business_params)
    respond_to do |format|
      if @business.save
        format.html { redirect_to root_path, notice: 'Business was successfully created.' }
        format.json { render :show, status: :created, location: @business }
      else
        format.html { render :new }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesses/1
  # PATCH/PUT /businesses/1.json
  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business.destroy
    respond_to do |format|
      format.html { redirect_to businesses_url, notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def biz_init
    session['host'] = request.referrer.split("/")[2]
    @business = Business.find_by(website: session['host'])
    redirect_to new_business_inquiry_path(@business)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      if params[:id] =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ 
        @business = Business.find(params[:id])
      else
        @business = Business.find_by(website: params[:id])
      end
    end
    
    def user_params
      params.require(:biz_user).permit(:email, :password)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_params
      params.require(:business).permit(:name, :detail, :website,
      biz_users_attributes: [:id, :fname, :lname, :email, :mobile, :salutation, :password, :password_confirmation ],
      inquiry_questions_attributes: [:id, :_destroy, :title])
    end
end
