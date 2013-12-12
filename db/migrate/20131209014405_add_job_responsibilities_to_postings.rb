class AddJobResponsibilitiesToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :job_responsibilities, :text, limit: nil
  end
end
