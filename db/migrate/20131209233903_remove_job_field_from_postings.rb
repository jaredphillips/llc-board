class RemoveJobFieldFromPostings < ActiveRecord::Migration
  def change
  	remove_column :postings, :job_field
  end
end
