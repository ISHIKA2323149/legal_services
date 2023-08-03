# == Schema Information
#
# Table name: reviews
#
#  id               :integer          not null, primary key
#  content          :text
#  rating           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  lawyer_detail_id :integer          not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_reviews_on_lawyer_detail_id  (lawyer_detail_id)
#  index_reviews_on_user_id           (user_id)
#
# Foreign Keys
#
#  lawyer_detail_id  (lawyer_detail_id => lawyer_details.id)
#  user_id           (user_id => users.id)
#
FactoryBot.define do
  factory :review do
    rating { 1 }
    content { "MyText" }
    user { nil }
    lawyer_detail { nil }
  end
end
