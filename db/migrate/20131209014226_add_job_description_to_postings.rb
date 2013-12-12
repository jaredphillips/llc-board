class AddJobDescriptionToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :job_description, :text, limit: nil
  end
end
