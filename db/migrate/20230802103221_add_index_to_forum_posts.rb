class AddIndexToForumPosts < ActiveRecord::Migration[6.0] # Adjust the version as per your Rails version
  def change
    add_index :forum_posts, :forum_thread_id
  end
end
