class CreateStoryBranches < ActiveRecord::Migration
  def change
    create_table :story_branches do |t|
      t.integer :from_id
      t.integer :to_id

      t.timestamps
    end
  end
end
