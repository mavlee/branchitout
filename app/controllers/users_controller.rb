class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    @title = @user.username

    respond_to do |format|
      if @user.save
        sign_in @user
        flash[:success] = "Welcome to BranchItOut!"
        format.html { redirect_to :root }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @user = User.new
  end
end
