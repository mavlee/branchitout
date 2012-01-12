class PagesController < ApplicationController
  def frontpage
    @title = "Home"
    @user = User.new
    @stories = Story.all

    respond_to do |format|
      format.html { render 'frontpage' }
    end
  end

  def dont_stalk_me
    @title = "Don't Stalk Me"
  end
end
