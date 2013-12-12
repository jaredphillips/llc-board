class RemoveUserIdFromPostings < ActiveRecord::Migration
  def change
  	remove_column :postings, :user_id
  end
end
