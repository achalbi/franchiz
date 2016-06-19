class SurveyWorkflowsController < ApplicationController
    skip_before_action :require_login, only: [:biz_review], raise: false

    before_action :set_inquiry
    
    def user_input
        @inquiry.user_input!
        UserMailer.survey_user_input_email(@inquiry).deliver_later
        respond_to do |format|
            format.html { redirect_to :back, notice: 'Request sent successfully' }
        end
    end
    
    def biz_review
        @inquiry.biz_review!
        UserMailer.survey_biz_review_email(@inquiry).deliver_later
        respond_to do |format|
            format.html { redirect_to thanks_welcome_path, notice: 'Request sent successfully' }
        end
    end
    
    def complete
        @inquiry.accept!
        respond_to do |format|
            format.html { redirect_to :back, notice: 'Survey complete' }
        end
    end
    
    private
    
    def set_inquiry
        @inquiry = Inquiry.find(params[:inquiry_id])
    end
end
