class SetNullStoriesToDeleted < ActiveRecord::Migration
  def up
    (StoryNode.where(:title => nil).map { |sn| sn.story }).map { |s| s.status=1 ; s.save() }
  end

  def down
  end
end
