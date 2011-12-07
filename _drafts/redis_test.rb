require 'redis'
require './classes/repository.rb'
require './classes/repositoryObject.rb'

redis = Redis.new
repo = Repository.new(redis)

test = RepositoryObject.new(120)
repo.sync(test)

test.value = 123

test2 = RepositoryObject.new(120)
test2 = repo.sync(test2)

test2.value = nil

repo.sync(test)
repo.sync(test2)

test2.value = 11111

repo.sync(test)

test3 = RepositoryObject.sync(120,repo)
test3.value = 888

puts test.value
