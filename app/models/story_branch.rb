class StoryBranch < ActiveRecord::Base
  belongs_to :from, :class_name => "StoryNode", :foreign_key => :from_id
  belongs_to :to,   :class_name => "StoryNode", :foreign_key => :to_id
end
