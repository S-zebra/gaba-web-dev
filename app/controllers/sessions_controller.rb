class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    a_params = params.permit([:user_id, :password])
    account = Account.authenticate(a_params[:user_id], a_params[:password])
    if account
      session[:uid] = account.id
      redirect_to controller: "accounts", action: "show", id: session[:uid]
    else
      redirect_to action: "new"
    end
  end
end
