require 'redis'
require './classes/repository.rb'
require './classes/repositoryObject.rb'

require './classes/facebook/fbPage.rb'

redis = Redis.new
repo = Repository.new(redis)

page = FbPage.sync(123456,repo)

page.value = "washoFbPage123"

page.sync(repo)

