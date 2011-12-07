require './classes/repositoryObject.rb'
require './classes/repositoryData.rb'
require './classes/repositoryHash.rb'
require './classes/repositoryCollection.rb'
require './classes/repositoryComplex.rb'


class Repository

  def initialize(redis)
    @instances = {}
    @redis = redis
  end

  def sync(obj)
    if @instances.key? obj.key
      obj = @instances[obj.key]
    else 
      stored = @redis.get(obj.key)
      obj.serialized = stored unless stored.nil?
    end
    obj.repo = self
    @redis.set(obj.key,obj.serialized)
    @instances[obj.key] = obj
  end

  def unset(obj)
    @instances.delete(obj.key) if @instances.key? obj.key
  end

  def weakup(key)
    pair = key.split(':',2)
    Kernel.const_get(pair[0]).sync(pair[1])
#    obj = Kernel.const_get(pair[0]).sync(pair[1])
#    sync(obj)
  end

end
