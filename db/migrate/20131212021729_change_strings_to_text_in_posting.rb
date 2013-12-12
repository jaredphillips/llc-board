class ChangeStringsToTextInPosting < ActiveRecord::Migration
  def change
  	change_column :postings, :job_description, :text, limit: nil
  	change_column :postings, :job_responsibilities, :text, limit: nil
  	change_column :postings, :required_experience, :text, limit: nil
  	change_column :postings, :further_information, :text, limit: nil

  end
end
