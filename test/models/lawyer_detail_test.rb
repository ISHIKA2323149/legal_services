# == Schema Information
#
# Table name: lawyer_details
#
#  id                  :integer          not null, primary key
#  city                :string
#  consultation_fees   :string
#  experience          :string
#  license_no          :string
#  practice_court_name :string
#  practice_field_name :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer          not null
#
# Indexes
#
#  index_lawyer_details_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require 'test_helper'

class LawyerDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
