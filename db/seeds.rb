Product.destroy_all
Shirt.destroy_all

50.times do |i|
  @name = Faker::Pokemon.name
  @price = Faker::Number.decimal(2)
  @description = Faker::Hipster.paragraph(4)
  Product.create!(name: @name, price: @price, description: @description)
end

20.times do |i|
  @name = Faker::Pokemon.name
  @sold = Faker::Boolean.boolean(0.5)
  Shirt.create!(name: @name, sold: @sold)
end

p "Created #{Product.count} products"
p "Created #{Shirt.count} shirts"
