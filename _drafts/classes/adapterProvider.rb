class AdapterProvider

  attr_accessor :repo    
  
  def initialize(repo)
    @workers = []
    @repo = repo
  end

  def <<(worker)
    worker.provider = self
    @workers << worker
  end

  def process(entity)
    process_actor(entity) if entity.kind_of? SocialActor
    process_activity(entity) if entity.kind_of? SocialActivity
    process_relation(entity) if entity.kind_of? SocialRelation
      
    nil
  end

  def process_actor(actor)
    actor.activities.each do |activity|
      process(activity)
    end
  end

  def process_activity(account)
    twitter_worker.process_account(account) if account.kind_of? TwitterAccount
  end

  def twitter_worker
    @workers.each do |worker|  
      return worker if worker.kind_of? TwitterWorker
    end
  end

end
