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
# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user model testing" do
    it "validates user instance" do
      user = User.new(name: "ishika", email: "ishika@google.com", role: "lawyer", password: "abc@123")
      expect(user).to be_valid
    end

    it "invalidates user object without required attributes" do
      user = User.new(name: "Jalad")
      expect(user).to_not be_valid
    end

    it "invalidates user object with too short password" do
      user = User.new(name: "mayur palik", email: "mayur@example.com", password: "pass")
      expect(user).to_not be_valid
    end

    it "invalidates user object with invalid email" do
      user = User.new(name: "tom Smith", email: "invalid_email", password: "password123")
      expect(user).to_not be_valid
    end
  
    it "defines the correct enum values for the 'role' attribute" do
      expect(User.roles).to eq({ "user" => 0, "lawyer" => 1 })
    end
  end
end
