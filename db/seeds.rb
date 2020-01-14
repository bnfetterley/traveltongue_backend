# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'


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

  
Philippines = Location.create(country: "Philippines", latitude: 12.8797, longitude: 121.7740)
Iran = Location.create(country: "Iran", latitude: 32.4279, longitude: 53.6880)
Korea = Location.create(country: "Korea", latitude: 35.9078, longitude: 127.7669)
CzechRepublic = Location.create(country: "Czech Republic", latitude: 49.8175, longitude: 15.4730)

Sinigang = Dish.create(name: "Sinigang", image: "https://www.kawalingpinoy.com/wp-content/uploads/2013/01/sinigang-na-baboy-2-1-500x500.jpg", description: "Sinigang is a Filipino soup or stew characterized by its sour and savoury taste most often associated with tamarind. It is one of the more popular dishes in Filipino cuisine", location_id: Philippines.id , user_id: Bri.id)
AshReshteh = Dish.create(name: "Ash Reshteh", image: "https://static01.nyt.com/images/2019/05/15/dining/14Iranianrex2/merlin_154113918_721ff786-e3ef-453f-b3a0-deec1d8f8e02-articleLarge.jpg", description: "Ash reshteh is a type of āsh featuring reshteh, kashk, commonly made in Iran and Azerbaijan. There are more than 50 types of thick soup in Iranian cooking, this being one of the more popular types.", location_id: Iran.id, user_id: Bri.id)
Tteokbokki = Dish.create(name: "Tteokbokki", image: "https://www.wandercooks.com/wp-content/uploads/2019/07/korean-tteokbokki-spicy-rice-cakes-ft-19-500x500.jpg", description: "Tteok-bokki or stir-fried rice cakes is a popular Korean food made from small-sized garae-tteok called tteokmyeon or commonly tteok-bokki-tteok. Eomuk, boiled eggs, and scallions are some of the most commonly added ingredients.", location_id: Korea.id, user_id: Bri.id)
Svickova = Dish.create(name: "Svickova", image: "https://i.pinimg.com/originals/75/ee/2b/75ee2b1641db1e41879afb3134f37c11.jpg", description: "Svíčková, or svíčková na smetaně, is a Czech meat dish and one of the most popular Czech meals. It is sirloin steak prepared with vegetables, spiced with black pepper, allspice, bay leaf and thyme, and boiled with double cream. It is generally served with houskové knedlíky.", location_id: CzechRepublic.id, user_id: Bri.id)
NasiCampur = Dish.create(name: "Nasi Campur", image: "https://img.qraved.co/v2/image/data/2015/08/25/nook-640x640-x.jpg", description: "Nasi campur refers to an Indonesian dish of a scoop of nasi putih accompanied by small portions of a number of other dishes, which includes meats, vegetables, peanuts, eggs, and fried-shrimp krupuk. Depending on origin, a nasi campur vendor might serve several side dishes, including vegetables, fish, and meats.", location_id: Location.find_by(country: "Indonesia").id, user_id: Bri.id)
