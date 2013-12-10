class AddHowToApplyToPosting < ActiveRecord::Migration
  def change
    add_column :postings, :how_to_apply, :string
  end
end
