require 'grackle'

client = Grackle::Client.new(:auth=>{
  :type=>:oauth,
  :consumer_key=>'06t7BVOLmPZC0dVMO0RdA', :consumer_secret=>'du9YRaCLoLv5NuprAS3rurnculi6YHJTENuzO2PCXg',
  :token=>'421838248-taUsvTqBBL6qrkccccy2maIMnoM8RtFjEYTIr57U', :token_secret=>'AMkwfjxtVgHL70fYPCcYFOgwGSMjynJyDM3nq10ds'
})

puts client.followers.ids? :screen_name=>'Divadlo29'
