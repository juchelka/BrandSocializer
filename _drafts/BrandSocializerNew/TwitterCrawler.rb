#
# Stahovac
class TwitterCrawler 
  
  #@driver
  #@repo
  
  def initialize(repo, credentials)
    @driver = Grackle.new
    # TODO: inicializace twitter driveru
    @repo = repo
  end
  
  
  # 
  # stahnuti vsech udaju a syncnuti do databaze
  def crawl(account)
    account = @repo.sync(account)  # odstraneni rekurze
    
    # nacteni followeru
    if account.folowers.nil? # jeste nebyly nacteni
      @driver.get_followers_for_id(account.id).each { |folower|
        account.add_follower(TwitterAccount.new(folower))  
      }
    elsif account.followers.error? # nastala chyba
      # rozhodovani o chybe - nejsou prava/nepodarilo se nacist?
    end

    account = @repo.sync(account)

    # nacteni followings
    if account.folowers.nil? # jeste nebyly nacteni
      @driver.get_friends_for_id(account.id).each { |friend|
        account.add_follower(TwitterAccount.new(folower))  
      }
    elsif account.followers.error? # nastala chyba
      # rozhodovani o chybe - nejsou prava/nepodarilo se nacist?
    end

    @repo.sync(account)
  end
end
