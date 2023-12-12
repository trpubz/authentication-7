class Admin::DashboardController < ApplicationController
  def index

  end

  private

  def require_admin
    render file: "public/404.html" unless current_admin?
  end
end