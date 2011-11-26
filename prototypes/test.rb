require './classes/brand.rb'
require './classes/twitterAccount.rb'

divadlo = Brand.new("Divadlo 29")
divadlo.add_activity(TwitterAccount.new(nil,"Divadlo29"))
divadlo.get_users.each do |user|

  puts user

  user.get_brands.each do |brand|
    puts brand
  end

end
