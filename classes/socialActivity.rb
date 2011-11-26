require './classes/twitterWorker.rb'

#tahle clasa bude delat neco jineho a to co dela bude delat jina classa neco jako workerProvider...

class SocialActivity

  def get_worker(activity)
    return get_twitter_worker if activity.kind_of? TwitterAccount
  end

  def get_twitter_worker
    @twitterWorker ? @twitterWorker : create_twitter_worker
  end

  def create_twitter_worker
    conf = {
      'CONSUMER_KEY'=>'06t7BVOLmPZC0dVMO0RdA',
      'CONSUMER_SECRET'=>'du9YRaCLoLv5NuprAS3rurnculi6YHJTENuzO2PCXg',
      'ACCESS_TOKEN'=>'421838248-taUsvTqBBL6qrkccccy2maIMnoM8RtFjEYTIr57U',
      'ACCESS_TOKEN_SECRET'=>'AMkwfjxtVgHL70fYPCcYFOgwGSMjynJyDM3nq10ds'
    }

    @twitterWorker = TwitterWorker.new(conf)

  end

    
  
end
