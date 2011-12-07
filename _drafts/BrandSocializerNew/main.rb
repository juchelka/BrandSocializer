



#
# Command line cesta ke configu pro dany proces
class Application


  def main
    brands = [""]

    @repo = Repo.new()

    # dispatch twitter worker
    # config je podmnozina globalniho configu
    TwitterWorker.new(account_name, config, @repo)
    # dispatch facebook worker
    FacebookWorker.new(page_name, config, @repo)
  end

end



