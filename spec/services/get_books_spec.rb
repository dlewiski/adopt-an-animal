require 'rails_helper'

describe Bestseller, :vcr => true do
  it "returns a 200 success header when the API call is made" do
    response = Bestseller.get_books
    expect(response.size).to(eq(15))
  end
end
