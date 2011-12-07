class RepositoryData  

  def initialize(parent)
    @parent = parent
    @data = initialize_data
    @loaded = nil
  end

  def flat_hash
    {
      'data' => get_data_hash,
      'loaded' => @loaded.to_s
    }
  end

  def flat_hash= h
    @data = h['data']
    @loaded = h['loaded'].empty? ? nil : DateTime.parse(h['loaded'])
  end

  def loaded!(datetime = nil)
    @loaded = datetime.nil? ? DateTime.now : datetime

    self
  end

  def loaded?
    ! @loaded.nil?
  end

  def loaded
    @loaded
  end

  def loaded=(datetime)
    @loaded = datetime
  end

end
