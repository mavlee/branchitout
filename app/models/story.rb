class Story < ActiveRecord::Base
  class Status
    NORMAL  = 0
    DELETED = 1
  end

  acts_as_commentable
  has_many :story_nodes
end
