class AddHowToApplyToPosting < ActiveRecord::Migration
  def change
    add_column :postings, :how_to_apply, :text, limit: nil
  end
end
