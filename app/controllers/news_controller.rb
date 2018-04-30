class NewsController < ApplicationController
  def index
    news_object = News.new()
    @books = news_object.get_books
  end
end
