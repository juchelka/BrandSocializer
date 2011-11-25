class TwitterAccount
  attr_accessor :name, :id

  def initialize(id,name)
    @id = id
    @name = name
  end  

  def to_str
    @name + '#' + @id.to_s + '@twitter'
  end
end
