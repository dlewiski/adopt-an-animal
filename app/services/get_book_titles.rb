class Bestseller
  def self.get_books
    # binding.pry
    # response = RestClient::Request.execute(
    # method: :get,
    # url: 'https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json',
    # headers: ENV['NYT_API_KEY'])

    response = RestClient.get('https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json', headers= {api_key: ENV['NYT_API_KEY']})
    JSON.parse(response)["results"]["books"]
  end
end
