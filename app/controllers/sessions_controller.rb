class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
    user = User.authenticate?(params[:sessions][:username], params[:sessions][:password])

    if user
      sign_in user
      redirect_back_or :controller => :pages, :action => :frontpage
    else
      flash[:error] = "Username or password is incorrect"
      redirect_to login_path
    end
  end

  def destroy
    sign_out
    redirect_to :root
  end
end
