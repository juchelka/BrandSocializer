require './classes/socialActivity.rb'

class TwitterAccount < SocialActivity
  attr_accessor :name, :id

  def initialize(id,name)
    @id = id
    @name = name
  end  

  def to_str
    @name + '#' + @id.to_s + '@twitter'
  end

  def get_users
    get_worker(self).get_followers(self)
  end

  def get_idintifier
    @id.nil? ? @name : @id
  end
end
