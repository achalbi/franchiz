class CommentsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :show, :destroy], raise: false
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_inquiry_survey_item, only: [:create]


  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    if logged_in?
      @comment.userable = current_user
    else
      @comment.userable = @inquiry.user
    end
      @comment.commentable = @survey_item
    respond_to do |format|
      if @comment.save
        format.js { }
        format.html { redirect_to @inquiry, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.js { }
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_inquiry_survey_item
      @inquiry = Inquiry.find(params[:inquiry_id])
      @survey_item = SurveyItem.find(params[:survey_item_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :commentable_id, :commentable_type, :userable_id, :userable_type, :inquiry_id, :survey_item_id)
    end
end
