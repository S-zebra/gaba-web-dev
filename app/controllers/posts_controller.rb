class PostsController < ApplicationController
  before_action :login

  def index
    @posts = Post.all
  end

  def new
    @new_post = Post.new
  end

  def create
    a_params = params.require(:post).permit(:body)
    @new_post = Post.new(
      account: @account,
      body: a_params[:body],
    ).save!
    redirect_to controller: "accounts", action: "show", id: session[:uid]
  end

  def login
    if session[:uid]
      @account = Account.find(session[:uid])
    else
      redirect_to controller: "sessions", action: "new"
    end
  end
end
