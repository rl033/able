class DashboardController < ApplicationController
  def index
    @account = Account.find(params[:id])
    render 'dashboard/index'
  end
end