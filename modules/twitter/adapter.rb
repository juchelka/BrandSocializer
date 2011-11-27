require 'rubygems'
require 'grackle'

require './classes/worker.rb'

class TwitterAdapter < Adapter
  
  attr_reader :client
  
  def initialize(conf)
    @client = Grackle::Client.new(conf)
  end

  def process_account(account)
    followers(account)
    friends(account)
  end

  def followers(account)
    unless repo[account].followers.nil?
      result = [] #some smarter collection with 'loaded' flag?
      client.followers.ids(account.id_hash).ids.each do |id|
        result << TwitterFollow.new(TwitterAccount.new(id),account)
      end
      account.followers = result
      account.followers_loaded = true
    end
  end

  def friends(account)
  end

end
