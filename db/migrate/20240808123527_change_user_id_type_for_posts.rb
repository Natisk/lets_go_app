# frozen_string_literal: true

class ChangeUserIdTypeForPosts < ActiveRecord::Migration[7.1]
  def up
    change_column :posts, :user_id, :bigint
    add_foreign_key :posts, :users
  end

  def down
    change_column :posts, :user_id, :integer
    remove_foreign_key :posts, :users
  end
end
