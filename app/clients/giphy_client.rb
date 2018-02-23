class GiphyClient
  def search(q)
    JSON.parse(HTTParty.get("https://api.giphy.com/v1/gifs/search?q=#{q}&api_key=dc6zaTOxFJmzC&limit=2").body)['data']
  end
end