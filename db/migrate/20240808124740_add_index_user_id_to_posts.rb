class AddIndexUserIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_index :posts, :user_id, name: 'index_posts_on_user_id'
  end
end
