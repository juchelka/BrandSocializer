class RepositoryObject
  
  attr_reader :id
  attr_accessor :value

  def initialize(id, value = nil)
    @id = id
    @value = value
  end

  #methods to deal with serialization
  def serialized
    @value
  end
  
  def serialized= serial
    @value = serial
  end

  #key generator
  def key
    self.class.to_s + ':' + @id.to_s
  end

  #repo helpers
  def sync(repository)
    repository.sync(self)
  end

  def self.sync(id,repository)
    repository.sync(self.new(id))
  end

  def repo
    @repo
  end

  def repo= (repository)
    @repo = repository
  end 

end
