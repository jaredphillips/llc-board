class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.string :company
      t.string :location
      t.string :job_type
      t.string :job_field
      t.string :catagory
      t.string :tags

      t.timestamps
    end
  end
end
