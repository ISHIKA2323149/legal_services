require 'rails_helper'

RSpec.describe "LawyerDetails", type: :request do
  describe "GET /index" do
    it "list all lawyer details" do
      get lawyer_details_url
      expect(response).to have_http_status(200)
    end
  end
end
