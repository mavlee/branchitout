class StoryNode < ActiveRecord::Base
  acts_as_commentable
  belongs_to :story
  belongs_to :author, :class_name => "User"

  has_many :votes
  has_many :story_branches, :class_name => "StoryBranch",
           :foreign_key => :from_id
  has_many :branches, :through => :story_branches, :source => :to
  has_many :previous_story_branches, :class_name => "StoryBranch",
           :foreign_key => :to_id
  has_many :previous_branches, :through => :previous_story_branches,
           :source => :from
end
