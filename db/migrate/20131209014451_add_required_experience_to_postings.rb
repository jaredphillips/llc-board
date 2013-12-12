class AddRequiredExperienceToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :required_experience, :string
  end
end
