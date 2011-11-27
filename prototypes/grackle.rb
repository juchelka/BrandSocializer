require 'grackle'

client = Grackle::Client.new(:auth=>{
  :type=>:oauth,
  :consumer_key=>'06t7BVOLmPZC0dVMO0RdA', :consumer_secret=>'du9YRaCLoLv5NuprAS3rurnculi6YHJTENuzO2PCXg',
  :token=>'421838248-taUsvTqBBL6qrkccccy2maIMnoM8RtFjEYTIr57U', :token_secret=>'AMkwfjxtVgHL70fYPCcYFOgwGSMjynJyDM3nq10ds'
})

puts client.account.rate_limit_status?

=begin
begin
  puts client.users.show?(:user_id=>39039276)
  puts client.followers.ids?(:user_id=>39039276).ids
rescue Grackle::TwitterError
  puts 'error'
end

client.followers.ids?(:user_id=>39039276).ids.each do |id|
  puts id
end
=end
