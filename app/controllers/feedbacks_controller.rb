class FeedbacksController < ApplicationController
  def create
    @feedback = Feedback.new
    @feedback.email = params[:feedback][:email]
    @feedback.subject = params[:feedback][:subject]
    @feedback.message = params[:feedback][:message]
    @feedback.save

    redirect_to root_path
  end
end
