class User < ActiveRecord::Base
  has_secure_password

  validates :email,
            :presence => :true,
            :uniqueness => true,
            :email_format => true

  validates :username,
            :presence => :true,
            :uniqueness => true,
            :length => { :in => 2..200 }

  validates :password,
            :length => { :minimum => 6 },
            :on => :create

  has_many :story_nodes
  has_many :comments
  has_many :votes

  def self.authenticate?(username, password)
    find_by_username(username).try(:authenticate, password)
  end
end
