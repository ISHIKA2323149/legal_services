# == Schema Information
#
# Table name: cases
#
#  id               :integer          not null, primary key
#  Hearing_date     :datetime
#  additional_notes :string
#  case_category    :string
#  case_description :string
#  case_name        :string
#  case_no          :string
#  case_status      :integer
#  court_name       :string
#  filing_date      :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_cases_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class CaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
