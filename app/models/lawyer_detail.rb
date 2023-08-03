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
class LawyerDetail < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  paginates_per 3

  validates_uniqueness_of :license_no
  validates_presence_of :city,:consultation_fees,:experience,:license_no,:practice_court_name,:practice_field_name
  validate :user_can_have_one_lawyer_detail

  private

  def user_can_have_one_lawyer_detail
    if user.lawyer_detail && user.lawyer_detail != self
      errors.add(:user, "already has a lawyer detail")
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    ["city", "consultation_fees", "created_at", "experience", "id", "license_no", "practice_court_name", "practice_field_name", "updated_at", "user_id"]
  end
end
