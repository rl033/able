class HomeController < ApplicationController
  def index
    if account_signed_in?
      redirect_to dashboard_path(current_account.id)
    else
      render :index
    end
  end
end