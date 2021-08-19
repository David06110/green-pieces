# Clean DataBase
p "Nettoyage en profondeur"
Booking.destroy_all
Space.destroy_all
User.destroy_all
# Seed pour user
p "Création du admin"
test0 = User.create(email:"david@ducobu.com", password: "ducobu")
test1 = User.create(email:"clarisse@hotmail.fr", password: "clarisse")
test2 = User.create(email:"audrey@google.com", password: "audrey")
test3 = User.create(email:"maria@gmail.com", password: "maria000")
test4 = User.create(email: "pedro@hotmail.com", password: "pedro000")


p test0
p test1
p test2
p test3
p test4


# Seed pour Spaces
p "Creation du coin de paradis"

# space0 = Space.create!(description: "Nestled in lush greenery on the heights of Cannes and boasting breathtaking views over the bay of Cannes, the Cap d’Antibes and Esterel mountains, this luxury contemporary style property of 720sqm will carry you right away in a world of wellness and serenity..", address: "3318 Gd Bd de Super Cannes, 06220 Vallauris", style: "Garden", name: "Golf ready", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "150€",user_id: test0.id)

space1 = Space.create!(description: "Bien plus qu’une plage et un restaurant, 3.14 plage offre une expérience unique en plein cœur de la célèbre Croisette de Cannes. Illuminée du généreux soleil méditerranéen, 3.14 PLAGE dégage une atmosphère propice au bien-être et à la détente.", address: "Bd de la Croisette, 06400 Cannes", style: "Pool", name: "big pool", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
p space1
space2 = Space.create!(description: "La Villa Thuret est un jardin botanique, situé à Antibes, dans le département français des Alpes-Maritimes.", address: "90 Chem. Gustave Raymond, 06160 Antibes", style: "Outdoor kitchen", name: "corner for tomatoes", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "220€",user_id: test2.id)
p space2
space3 = Space.create!(description: "Transformé en hôtel, le Château Eza se trouve dans le village médiéval et piéton d'Èze. Il propose des chambres offrant une vue sur la mer Méditerranée et un restaurant gastronomique.", address: "Le Chateau, Rue de la Pise, 06360 Èze", style: "Garden", name: "Piscine du soleil", check_in: "01/08/2021 15h", check_out: "31/08/2021 16h", price: "350€", user_id: test3.id)
p space3
space4 = Space.create!(description: "Situé dans un palais classé monument historique à Monaco, l'Hôtel Hermitage est un hôtel cinq étoiles de luxe présentant une décoration Belle Époque, à seulement 200 mètres du casino de Monte-Carlo. Il possède un jardin d'hiver ainsi qu'un spa de 7 000 m²..", address: "Sq. Beaumarchais, 98000 Monaco", style: "Outdoor kitchen", name: "Kitchena maravillosa", check_in: "01/06/2021 14h", check_out: "31/08/2021 16h", price: "550€", user_id: test4.id)
p space4

# p "booking test"
# booking0 = Booking.create!(user: test0, space: space0)
# p booking0
