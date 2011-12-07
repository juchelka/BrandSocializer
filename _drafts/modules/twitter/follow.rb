require './classes/socialRelation.rb'

class TwitterFollow < SocialRelation
  attr_accessor :follower, :followed

  def initialize (follower,followed)
    @follower = follower
    @followed = followed
  end
end
