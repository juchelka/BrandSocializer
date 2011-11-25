class Brand
  
  attr_accessor :name, :activities

  def initialize(name)
    @activities = []
    @name = name
   
  end

  def add_activity(activity)
    @activities << activity
  end

  def to_s
    result = @name + "'s activities: "
    @activities.each do |activity|
      result << activity << ','
    end

    result
  end

end
