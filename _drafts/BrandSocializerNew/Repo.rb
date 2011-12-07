
#
#
# Repozitar co bude pracovat s objekty a vyhledava jako key/value storage
#
class Repo
  
  
  def initialize
    @container = Set.new
  end 
  
  def sync (object)
    # TODO: sync s couchem
    @container[object.unique_id] ||= object
  end
end