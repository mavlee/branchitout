class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :description
      t.integer :start_story_node_id

      t.timestamps
    end
  end
end
