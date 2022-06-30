class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["USER_NAME"],
                               password: ENV["PASSWORD"],
                               if: -> { ENV["PASSWORD"].present? }
  def show
    @products = Product.all
    @categories = Category.all
  end
end
