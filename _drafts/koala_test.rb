require 'koala'
require 'json'

graph = Koala::Facebook::API.new('AAACEdEose0cBAPODFHtEPwkBPUx0cmkZBgZBPEnQIkhmEZC9i10YcfgLRX9Ko8oQMlxIZBUEO3XSQE7C6txyhpgLZBI3WpfsZD')

page = 'bedynky.brno'

feed = graph.get_connections(page,'feed')

#puts feed

feed.each do |p|

  if p["comments"]["count"] > 0
    p["comments"]["data"].each do |c| 
#      puts c["message"]
    end
  end

  unless p["likes"].nil?
    p["likes"]["data"].each do |l| 
      puts l["name"]
    end
  end

end

=begin
pageId = 153984024626910

page = FbPage.sync(pageId)

unless page.loaded?
  page.load (graph.get_object(page.id))
end
=end
