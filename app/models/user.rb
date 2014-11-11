class User < ActiveRecord::Base

  has_many :posts
  has_one :profile

  has_many :followers
  
end
