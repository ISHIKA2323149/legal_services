require 'rails_helper'

RSpec.describe Case, type: :model do
  describe 'Validation' do
    it 'validates case instance' do
      user = User.create(name: 'test_user', email: 'user@example.com', password: 'password')
      case_instance = Case.new(
        user: user,
        Hearing_date: Time.now,
        case_category: 'Some Category',
        case_description: 'Some Description',
        case_name: 'Some Name',
        case_no: 'ABC123',
        case_status: 'running',
        court_name: 'Some Court',
        filing_date: Time.now
      )
      expect(case_instance).to be_valid
    end

    it 'not validates case instance' do
      user = User.create(name: 'test_user', email: 'user@example.com', password: 'password')
      case_instance = Case.new(
        user: user,
        Hearing_date:'',
        case_category: 'Some Category',
        case_description: 'Some Description',
        case_name: 'Some Name',
        case_no: 'ABC123',
        case_status: 'running',
        court_name: 'Some Court',
        filing_date: Time.now
      )
      expect(case_instance).to_not be_valid
    end
  end
end
