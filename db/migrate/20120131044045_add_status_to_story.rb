class AddStatusToStory < ActiveRecord::Migration
  def change
    add_column :stories, :status, :integer, :null => :false, :default => 0
  end
end
