Product.destroy_all

50.times do |i|
  @name = Faker::Pokemon.name
  @price = Faker::Number.decimal(2)
  @description = Faker::Hipster.paragraph(4)
  Product.create!(name: @name, price: @price, description: @description)
end

p "Created #{Product.count} products"
