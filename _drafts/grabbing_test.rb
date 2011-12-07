require 'koala'
require 'redis'
require 'json'
require 'date'
require './classes/repository.rb'
require './classes/facebook/facebook.rb'

graph = Koala::Facebook::API.new('AAACEdEose0cBAPODFHtEPwkBPUx0cmkZBgZBPEnQIkhmEZC9i10YcfgLRX9Ko8oQMlxIZBUEO3XSQE7C6txyhpgLZBI3WpfsZD')

redis = Redis.new
repo = Repository.new(redis)

pageId = 153984024626910

page = FbPage.sync(pageId,repo)

unless page.details.loaded?
  details = graph.get_object(page.id)
  page.details.set('name',details['name'])
  page.details.loaded!
else
  puts 'Page details already loaded ' + page.details.loaded.to_s
end



page.sync(repo)

