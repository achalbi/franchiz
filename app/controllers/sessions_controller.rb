class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create], raise: false

  # GET /sessions
  # GET /sessions.json
  def index
    @sessions = Session.all
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
    @session = Session.new(session_params)
    
    if @session.valid?
      user = authenticate_session
    end
    
    respond_to do |format|
      if user
        log_in user
        format.html { redirect_to user.business, notice: user.name+' successfully logged in.' }
        format.json { render :show, status: :created, location: @session }
      else
        flash[:alert] = 'Invalid email/password combination'
        format.html { redirect_to root_path }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
    respond_to do |format|
      if @session.update(session_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { render :show, status: :ok, location: @session }
      else
        format.html { render :edit }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    log_out
    respond_to do |format|
      format.html { redirect_to root_path , notice: 'Session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def authenticate_session
     user =  BizUser.find_by(email: params[:session][:email].downcase)
     password = BCrypt::Password.new(user.password_digest)
      if user && password == params[:session][:password]
        user
      else
        nil
      end
    end
    

    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
