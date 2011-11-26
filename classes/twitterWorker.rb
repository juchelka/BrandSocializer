require 'rubygems'
require 'twitter'

require './classes/worker.rb'

class TwitterWorker < Worker
  
  def get_client
    @client ? @client : create_client
  end

  def create_client
    Twitter.configure do |config|
      config.consumer_key = @conf['CONSUMER_KEY']
      config.consumer_secret = @conf['CONSUMER_SECRET']
      config.oauth_token = @conf['ACCESS_TOKEN']
      config.oauth_token_secret = @conf['ACCESS_TOKEN_SECRET']
    end    

    @client = Twitter
  end  

  def get_followers(account)
    get_client.follower_ids(account.get_identifier) 
  end

  def get_friends(account)
    get_client.friends_ids(account.get_identifier)
  end

end
