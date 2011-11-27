require './classes/repository.rb'
require './classes/brand.rb'
require './classes/adapterProvider.rb'

require './modules/twitter.rb'

adapters = AdapterProvider.new(Repository.new)

adapters << TwitterAdapter.new(
  :auth=>{
    :type=>:oauth,
    :consumer_key=>'06t7BVOLmPZC0dVMO0RdA', 
    :consumer_secret=>'du9YRaCLoLv5NuprAS3rurnculi6YHJTENuzO2PCXg',
    :token=>'421838248-taUsvTqBBL6qrkccccy2maIMnoM8RtFjEYTIr57U', 
    :token_secret=>'AMkwfjxtVgHL70fYPCcYFOgwGSMjynJyDM3nq10ds'
  }
)

divadlo = Brand.new("Divadlo 29")
divadlo.activities << TwitterAccount.new("Divadlo29")

adapters.process(divadlo)

puts divadlo
