class Repository
  
  attr_accessor :items

  def initialize
    @items = Set.new()
  end

  def [object]
    #merge with object in set then save merged obj return it
    object
  end
end
