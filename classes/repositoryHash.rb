class RepositoryHash < RepositoryData  

  def initialize_data
    {}
  end

  def get(name)
    if (@data[name].kind_of? Hash) && @data[name].key?('foreignKey') && !@parent.nil? && !@parent.repo.nil?
      @data[name] = @parent.repo.weakup(@data[name]['foreignKey'])
    end
    @data[name]

  end

  def set(name,value)
    @data[name] = value
    
    self
  end

  def setk(value)
    set(value.key,value)
  end

  def get_data_hash
    result = Hash.new
        
    @data.each do |key, value|
      result[key] = (value.kind_of? RepositoryObject) ? {'foreignKey'=>value.key} : value
    end

    result
  end

end
