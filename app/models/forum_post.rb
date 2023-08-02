# == Schema Information
#
# Table name: forum_posts
#
#  id              :integer          not null, primary key
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  forum_thread_id :integer
#  user_id         :integer
#
# Indexes
#
#  index_forum_posts_on_forum_thread_id  (forum_thread_id)
#  index_forum_posts_on_user_id          (user_id)
#
class ForumPost < ApplicationRecord
  belongs_to :forum_thread
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "forum_thread_id", "id", "updated_at", "user_id"]
  end
end
