class AddJobResponsibilitiesToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :job_responsibilities, :string
  end
end
