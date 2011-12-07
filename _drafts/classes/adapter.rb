class Adaptrer

  attr_reader :conf
  attr_accessor :provider

  def initialize(conf)
    @conf = conf
  end

  def repo
    provider.repo
  end  

end
