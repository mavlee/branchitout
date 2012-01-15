class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :story_node_id
      t.integer :user_id
      t.integer :type
      t.timestamps
    end
  end
end
