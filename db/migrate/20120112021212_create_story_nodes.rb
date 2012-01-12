class CreateStoryNodes < ActiveRecord::Migration
  def change
    create_table :story_nodes do |t|
      t.string :title
      t.text :content
      t.integer :story_id
      t.integer :author_id

      t.timestamps
    end
  end
end
