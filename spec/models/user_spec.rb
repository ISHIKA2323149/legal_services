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
