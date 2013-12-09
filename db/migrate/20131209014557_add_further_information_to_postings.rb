class AddFurtherInformationToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :further_information, :string
  end
end
