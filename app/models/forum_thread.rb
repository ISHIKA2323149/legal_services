# == Schema Information
#
# Table name: forum_threads
#
#  id         :integer          not null, primary key
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_forum_threads_on_user_id  (user_id)
#
class ForumThread < ApplicationRecord
  belongs_to :user
  has_many :forum_posts

  accepts_nested_attributes_for :forum_posts

  validates :subject, presence: true
  validates_associated :forum_posts

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "subject", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["forum_posts", "user"]
  end
end
