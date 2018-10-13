class AccountsController < ApplicationController
  def show
    @account = Account.find(session[:uid])
    @posts = Post.where(account: @account)
  end

  def new
    @new_account = @new_account || Account.new
  end

  def create
    acc_params = params.require(:account).permit(:user_id, :password, :disp_name, :bio, :location, :icon)
    @new_account = Account.new(
      user_id: acc_params[:user_id],
      password: acc_params[:password],
      disp_name: acc_params[:disp_name],
      bio: acc_params[:bio],
      location: acc_params[:location],
      icon: acc_params[:icon],
    )
    if @new_account.save
      session[:uid] = @new_account.id
      redirect_to action: "show", id: session[:uid]
    else
      redirect_to action: "new"
    end
  end
end
