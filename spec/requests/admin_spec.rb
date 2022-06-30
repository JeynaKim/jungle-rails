require 'rails_helper'

RSpec.describe "Admins", type: :request do
  describe "GET /categories" do
    it "returns http success" do
      get "/admin/categories"
      expect(response).to have_http_status(:success)
    end
  end

end
