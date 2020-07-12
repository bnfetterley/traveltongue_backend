# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

User.destroy_all
Location.destroy_all
Comment.destroy_all
Dish.destroy_all


Bri = User.create(username: "Bri")

def locations 
    url = 'https://api.ipgeolocationapi.com/countries'
    response = RestClient.get(url)
    json = JSON.parse response
    if !json.nil?
        json.each do |location|
            # byebug
            Location.create(country: location[1]["name"], longitude: location[1]["geo"]["longitude"], latitude: location[1]["geo"]["latitude"])
        end
    else
        puts "error seeding locations"
    end
end

locations

  
# Philippines = Location.create(country: "Philippines", latitude: 12.8797, longitude: 121.7740)
# Iran = Location.create(country: "Iran", latitude: 32.4279, longitude: 53.6880)
# Korea = Location.create(country: "Korea", latitude: 35.9078, longitude: 127.7669)
# CzechRepublic = Location.create(country: "Czech Republic", latitude: 49.8175, longitude: 15.4730)

# Sinigang = Dish.create(name: "Sinigang", image: "https://www.kawalingpinoy.com/wp-content/uploads/2013/01/sinigang-na-baboy-2-1-500x500.jpg", description: "Sinigang is a Filipino soup or stew characterized by its sour and savoury taste most often associated with tamarind. It is one of the more popular dishes in Filipino cuisine", location_id: Philippines.id , user_id: Bri.id)
# AshReshteh = Dish.create(name: "Ash Reshteh", image: "https://static01.nyt.com/images/2019/05/15/dining/14Iranianrex2/merlin_154113918_721ff786-e3ef-453f-b3a0-deec1d8f8e02-articleLarge.jpg", description: "Ash reshteh is a type of āsh featuring reshteh, kashk, commonly made in Iran and Azerbaijan. There are more than 50 types of thick soup in Iranian cooking, this being one of the more popular types.", location_id: Iran.id, user_id: Bri.id)
# Tteokbokki = Dish.create(name: "Tteokbokki", image: "https://www.wandercooks.com/wp-content/uploads/2019/07/korean-tteokbokki-spicy-rice-cakes-ft-19-500x500.jpg", description: "Tteok-bokki or stir-fried rice cakes is a popular Korean food made from small-sized garae-tteok called tteokmyeon or commonly tteok-bokki-tteok. Eomuk, boiled eggs, and scallions are some of the most commonly added ingredients.", location_id: Korea.id, user_id: Bri.id)
# Svickova = Dish.create(name: "Svickova", image: "https://i.pinimg.com/originals/75/ee/2b/75ee2b1641db1e41879afb3134f37c11.jpg", description: "Svíčková, or svíčková na smetaně, is a Czech meat dish and one of the most popular Czech meals. It is sirloin steak prepared with vegetables, spiced with black pepper, allspice, bay leaf and thyme, and boiled with double cream. It is generally served with houskové knedlíky.", location_id: CzechRepublic.id, user_id: Bri.id)
# NasiCampur = Dish.create(name: "Nasi Campur", image: "https://img.qraved.co/v2/image/data/2015/08/25/nook-640x640-x.jpg", description: "Nasi campur refers to an Indonesian dish of a scoop of nasi putih accompanied by small portions of a number of other dishes, which includes meats, vegetables, peanuts, eggs, and fried-shrimp krupuk. Depending on origin, a nasi campur vendor might serve several side dishes, including vegetables, fish, and meats.", location_id: Location.find_by(country: "Indonesia").id, user_id: Bri.id)
# PineappleBun = Dish.create(name: "Pineapple Bun",
# description: "A pineapple bun is a kind of sweet bun predominantly popular in Hong Kong and also common in Chinatowns worldwide. Despite the name, it does not traditionally contain pineapple; rather, the name refers to the look of the characteristic topping.",
# image: "https://i.ytimg.com/vi/ePd7NrdP_sg/maxresdefault.jpg",
# user_id: 1,
# location_id: 177)
# Sabich = Dish.create(
# name: "Sabich",
# description: "Sabich or sabih is an Israeli sandwich based on a traditional Iraqi Jewish dish prepared for Shabbat. It consists of pita or laffa stuffed with fried eggplant, hard boiled eggs, Israeli salad, parsley, amba and tahini sauce.",
# image: "https://assets.blog.foodnetwork.ca/wp-content/uploads/2018/04/03140002/888x710-sabich-sandwich.jpg",
# user_id: 1,
# location_id: 124   
# )

# GratinDauphinois = Dish.create(
# name: "Gratin dauphinois",
# description: "Gratin dauphinois is a French dish of sliced potatoes baked in milk or cream, from the Dauphiné region in south-eastern France. There are many variants of the name of the dish, including pommes de terre dauphinoise, potatoes à la dauphinoise and gratin de pommes à la dauphinoise.",
# image: "https://d1doqjmisr497k.cloudfront.net/-/media/schwartz/recipes/2000x1125/dauphinoise_potato_bake_2000.jpg?vd=20180522T020156Z&ir=1&width=885&height=498&crop=auto&quality=75&speed=0&hash=3A666782CE022D29BA27C95CBB7554F06ABCB822",
# user_id: 1,
# location_id: 65,
# )

# BiscuitsandGravy = Dish.create(
# name: "Biscuits and Gravy",
# description: "The American South has deep Scottish roots, and American biscuits are made in a very similar way to Scottish shortbread, so most likely the origin of biscuits is in Scottish shortbread. They brought the recipe over, and as dishes do, it evolved. A little more liquid turned the originally hard biscuit into a soft one. The gravy used on biscuits and gravy is based on centuries-old cooking methods first perfected in France. It’s based on a roux (flour and fat), with added milk. It was a perfect dish for the available ingredients.",
# image: "https://hips.hearstapps.com/del.h-cdn.co/assets/17/38/1506017532-sausage-gravy.jpg",
# user_id: 1,
# location_id: 181
# )

# KashkEBademjan = Dish.create(
# name: "Kashk-E-Bademjan",
# description: "Eggplant dip or ”KASHK-E-BADEMJAN” is a traditional Persian vegetarian dish. It is as simple as mixing eggplant puree, walnuts, onion, garlic and Kashk together. Kashk is a Persian yogurt derivative, produced through a long process. Kashk adds a similar taste like sour cream or thick Greek yogurt to the dip.",
# image: "http://persianfoodtours.com/wp-content/uploads/2019/09/Persian_vegetarian-dish-kashke-bademjan.jpg",
# user_id: 1,
# location_id: Iran.id
# )

# BORANI = Dish.create(
# name: "Borani",
# description: "”BORANI” dips are yogurt dips mixed with various vegetables or herbs. Mix spinach, eggplants, zucchini and/or cucumber into natural yogurt. Moreover, add some fresh or dried herbs and spices for extra flavour. Borani dips make great healthy vegetarian dishes. as a result, they are great as appetizers or side dishes.",
# image: "http://persianfoodtours.com/wp-content/uploads/2019/09/persian-vegetarian-dish-borani-bademjan.jpg",
# user_id: 1,
# location_id: Iran.id
# )