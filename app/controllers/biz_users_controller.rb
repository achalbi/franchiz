class BizUsersController < ApplicationController
  before_action :set_biz_user, only: [:show, :edit, :update, :destroy]
  before_action :set_business

  # GET /biz_users
  # GET /biz_users.json
  def index
    @biz_users = BizUser.all
  end

  # GET /biz_users/1
  # GET /biz_users/1.json
  def show
  end

  # GET /biz_users/new
  def new
    @biz_user = @business.biz_users.build
  end

  # GET /biz_users/1/edit
  def edit
  end

  # POST /biz_users
  # POST /biz_users.json
  def create
    
    @biz_user = @business.biz_users.build(biz_user_params)

    respond_to do |format|
      if @biz_user.save
        format.html { redirect_to business_biz_users_url(@business), notice: 'Biz user was successfully created.' }
        format.json { render :show, status: :created, location: @biz_user }
      else
        format.html { render :new }
        format.json { render json: @biz_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biz_users/1
  # PATCH/PUT /biz_users/1.json
  def update
    respond_to do |format|
      if @biz_user.update(biz_user_params)
        format.html { redirect_to @biz_user, notice: 'Biz user was successfully updated.' }
        format.json { render :show, status: :ok, location: @biz_user }
      else
        format.html { render :edit }
        format.json { render json: @biz_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biz_users/1
  # DELETE /biz_users/1.json
  def destroy
    @biz_user.destroy
    respond_to do |format|
      format.html { redirect_to biz_users_url, notice: 'Biz user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      if params[:business_id].present?
        @business = Business.find(params[:business_id])
      else
        @business = Business.find(session[:business_id])
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_biz_user
      @biz_user = BizUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biz_user_params
      params.require(:biz_user).permit(:fname, :lname, :email, :mobile, :salutation, :password, :business_id)
    end
end
