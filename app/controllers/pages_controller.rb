class PagesController < ApplicationController
  def frontpage
    @title = "Home"
    @user = User.new
    @stories = Story.where(:status => Story::Status::NORMAL)

    respond_to do |format|
      format.html { render 'frontpage' }
    end
  end

  def dont_stalk_me
    @title = "Don't Stalk Me"
  end

  def feedback
    @title = "Feedback"
    @feedback = Feedback.new
  end

  def about
    @title = "About"
  end
end
