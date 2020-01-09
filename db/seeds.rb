# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Bri = User.create(username: "Bri")

  
Philippines = Location.create(country: "Philippines")
Iran = Location.create(country: "Iran")
Korea = Location.create(country: "Korea")
CzechRepublic = Location.create(country: "Czech Republic")

Sinigang = Dish.create(name: "Sinigang", image: "https://www.kawalingpinoy.com/wp-content/uploads/2013/01/sinigang-na-baboy-2-1-500x500.jpg", description: "Sinigang is a Filipino soup or stew characterized by its sour and savoury taste most often associated with tamarind. It is one of the more popular dishes in Filipino cuisine", location_id: Philippines.id , user_id: Bri.id)
AshReshteh = Dish.create(name: "Ash Reshteh", image: "https://static01.nyt.com/images/2019/05/15/dining/14Iranianrex2/merlin_154113918_721ff786-e3ef-453f-b3a0-deec1d8f8e02-articleLarge.jpg", description: "Ash reshteh is a type of āsh featuring reshteh, kashk, commonly made in Iran and Azerbaijan. There are more than 50 types of thick soup in Iranian cooking, this being one of the more popular types.", location_id: Iran.id, user_id: Bri.id)
Tteokbokki = Dish.create(name: "Tteokbokki", image: "https://www.wandercooks.com/wp-content/uploads/2019/07/korean-tteokbokki-spicy-rice-cakes-ft-19-500x500.jpg", description: "Tteok-bokki or stir-fried rice cakes is a popular Korean food made from small-sized garae-tteok called tteokmyeon or commonly tteok-bokki-tteok. Eomuk, boiled eggs, and scallions are some of the most commonly added ingredients.", location_id: Korea.id, user_id: Bri.id)
Svickova = Dish.create(name: "Svickova", image: "https://i.pinimg.com/originals/75/ee/2b/75ee2b1641db1e41879afb3134f37c11.jpg", description: "Svíčková, or svíčková na smetaně, is a Czech meat dish and one of the most popular Czech meals. It is sirloin steak prepared with vegetables, spiced with black pepper, allspice, bay leaf and thyme, and boiled with double cream. It is generally served with houskové knedlíky.", location_id: CzechRepublic.id, user_id: Bri.id)
