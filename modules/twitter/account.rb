require './classes/socialActivity.rb'

class TwitterAccount < SocialActivity
  attr_accessor :id, :followers, :friends

  def initialize(id)
    @id = id
  end  

  def to_str
    "#{@id.to_s}@twitter"
  end

  def id_hash
    @id.is_a? Integer ? {:user_id => @id} : {:screen_name => @id}
  end

end
