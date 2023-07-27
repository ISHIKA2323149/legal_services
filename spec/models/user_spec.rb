# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user model testing" do
    it "validates user instance" do
      user = User.new(name: "Ankit", email:"ankit@google.com", role: "lawyer", password: "abc@123")
      expect(user).to be_valid
    end

    it "invalidates user object" do
      user = User.new(name: "Jalad")
      expect(user).to_not be_valid
    end
  end
end
