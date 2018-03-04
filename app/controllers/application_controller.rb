class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    include SessionsHelper

  
  def index
     @tasks = Task.all
  end
  def show
     @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def counts(user)
    @count_kadaitasklists = user.kadaitasklists.count
  end
end