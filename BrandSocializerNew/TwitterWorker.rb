require "TwitterCrawler.rb"

#
# Resi zakladni ucet a hloubku grafu a spolupraci s repem
class TwitterWorker 
  
  
  def initialize(account, config, repo)
    
  end



  def work (account)
    # nacte ID followeru a followingu
    # provede se hodnekrat ale neprovede se zadnej request
    crawlers.each do |crawler|
      crawler.crawl_account(account)
    
      # crawlne followery followeru
      account.followers.each def |follower|
        crawlers.each do |crawler|
          crawler.crawl_account(follower)
        end
      end
  
      # crawlne followingy followeru
      account.followings.each def |following|
        crawlers.each do |crawler|
          crawler.crawl_account(following)
        end
      end
    end

  end 


  
  def crawlers
    result = []
    config.twiter.each do |conf|
      result << TwitterCrawler.new(conf, repo)
    end
    result
  end
  
  
end