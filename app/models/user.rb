class User < ActiveRecord::Base

  has_many :posts
  has_one :profile

  has_many :followerships,
    class_name: "Follower",
    foreign_key: :follower_id

  has_many :leaderships,
    class_name: "Follower",
    foreign_key: :leader_id

  has_many :followers,
    through: :leaderships,
    source: :follower

  has_many :leaders,
    through: :followerships,
    source: :leader

end
