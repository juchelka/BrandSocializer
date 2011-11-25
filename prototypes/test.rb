require './classes/brand.rb'
require './classes/twitterAccount.rb'

bernard = Brand.new("Bernard")
bernard.add_activity(TwitterAccount.new(125,"Bernard"))

puts bernard



