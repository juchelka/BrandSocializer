require './BrandSocializer.rb'

conf.load('./conf/cuketka')

worker = Worker.new(conf)

worker.run()

