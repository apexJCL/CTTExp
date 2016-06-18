class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
      redirect_to dashboard_path
    else
      redirect_to signin_path
    end
  end

  def dashboard
    @pagetitle = 'Dashboard'
  end
end
