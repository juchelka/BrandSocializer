require 'rubygems'
require 'twitter'

Twitter.configure do |config|
  config.consumer_key = '06t7BVOLmPZC0dVMO0RdA'
  config.consumer_secret = 'du9YRaCLoLv5NuprAS3rurnculi6YHJTENuzO2PCXg'
  config.oauth_token = '421838248-taUsvTqBBL6qrkccccy2maIMnoM8RtFjEYTIr57U'
  config.oauth_token_secret = 'AMkwfjxtVgHL70fYPCcYFOgwGSMjynJyDM3nq10ds'
end

Twitter.update("I'm tweeting with @gem!")
