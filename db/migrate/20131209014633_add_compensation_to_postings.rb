class AddCompensationToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :compensation, :string
  end
end
