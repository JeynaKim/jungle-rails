class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["USER_NAME"],
                               password: ENV["PASSWORD"],
                               if: -> { ENV["PASSWORD"].present? }
  def show
  end
end
