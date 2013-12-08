class AddUserToPosting < ActiveRecord::Migration
  def change
    add_column :postings, :user_id, :string
  end
end
