require 'json'
require './classes/repository.rb'
require 'date'
require 'redis'
require './classes/facebook/facebook.rb'
require 'pp'


redis = Redis.new
repo = Repository.new(redis)


