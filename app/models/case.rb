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
class Case < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :case_no
  validates_presence_of :Hearing_date,:case_category,:case_description,:case_name,:case_no,:case_status,:court_name,:filing_date
  enum case_status: { running: 0, closed: 1 , pending: 2, dismissed: 3}
end
  