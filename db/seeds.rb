# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create(title: 'Iphone',
  description: 
    %{<p>
       Apple Product
      </p>},
  image_url:   'iphone.jpg',    
  price: 536.00)
# . . .
Product.create(title: 'Galaxy S4',
  description:
    %{<p>
     		Samsung smartphone, android
      </p>},
  image_url: 'galaxy.jpg',
  price: 540.12)
# . . .

Product.create(title: 'z10',
  description: 
    %{<p>
        Blackberry product , bb10 os
      </p>},
  image_url: 'z10.jpg',
  price: 234.23)