class AddJobDescriptionToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :job_description, :string
    
  end
end
