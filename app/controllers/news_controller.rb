class NewsController < ApplicationController
  def index
    @books = Bestseller.get_books
  end
end
