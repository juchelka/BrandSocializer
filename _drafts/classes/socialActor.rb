class SocialActor

  attr_accessor :name, :activities

  def initialize(name)
    @activities = []
    @name = name   
  end

  def to_s
    @name + "'s activities: " + @activities.join(', ')
  end
end
