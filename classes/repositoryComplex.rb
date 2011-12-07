class RepositoryComplex < RepositoryObject

  def initialize(id)
    super(id)

    structure.each do |symbol, constant|
      instance_variable_set(symbol, constant.new(self))
    end
  end

  def serialized
    h = Hash.new
    structure.each do |symbol, constant|
      h[symbol.to_s] = instance_variable_get(symbol).flat_hash
    end
    JSON.generate(h)
  end
  
  def serialized= serial
    h = JSON.parse(serial)
    structure.each do |symbol, constant|
      instance_variable_set(symbol, constant.new(self))
      instance_variable_get(symbol).flat_hash = h[symbol.to_s]
    end
  end

end
