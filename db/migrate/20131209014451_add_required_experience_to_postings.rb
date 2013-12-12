class AddRequiredExperienceToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :required_experience, :text, limit: nil
  end
end
