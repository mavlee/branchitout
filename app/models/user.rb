class User < ActiveRecord::Base
  has_many :story_nodes
  has_many :comments
  has_many :votes

  def self.authenticate?(username)
    find_by_username username
  end
end
