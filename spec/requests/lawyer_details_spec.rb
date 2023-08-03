require 'rails_helper'

RSpec.describe "LawyerDetails", type: :request do
  describe "GET /index" do
    it "list all lawyer details" do
      get lawyer_details_url
      expect(response).to have_http_status(200)
    end
  end

  describe "POST #create" do
    it "creates a new " do
      get lawyer_details_path
      expect(response).to have_http_status(200)
    end
  end

  # describe "DELETE /lawyer_details/:id" do
  #   it "delete lawyer_detail response" do
  #     user = User.create(name: 'akansha', email: 'akansha@gmail.com', password: '123456', role: 'lawyer')
  #     lawyer_detail = LawyerDetail.create(license_no: 'akansha123', practice_court_name: 'high court', practice_field_name: 'divorce',
  #     experience: '3 years', city: 'bhopal',consultation_fees: 'rs.1000/hr')
  #     delete lawyer_detail_path(id:lawyer_detail.id)
  #     expect(response).to have_http_status(302)
  #   end
  # end


end
 