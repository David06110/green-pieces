require "open-uri"
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

file = URI.open('https://images.unsplash.com/photo-1509600110300-21b9d5fedeb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
space0 = Space.create!(description: "Bien plus qu’une plage et un restaurant, 3.14 plage offre une expérience unique en plein cœur de la célèbre Croisette de Cannes. Illuminée du généreux soleil méditerranéen, 3.14 PLAGE dégage une atmosphère propice au bien-être et à la détente.", address: "Bd de la Croisette, 06400 Cannes", style: "Garden", name: "3.14 PLAGE", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space0.photo.attach(io: file, filename: '3.14 plage.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1621275471769-e6aa344546d5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80')
space1 = Space.create!(description: "La villa Ephrussi de Rothschild, appelée aussi villa Île-de-France, est un des plus beaux palais de style Renaissance de la Côte d'Azur construit sur un sommet de la presqu'île du cap Ferrat entre 1905 et 1912 à Saint-Jean-Cap-Ferrat par la baronne Béatrice Ephrussi de Rothschild", address: "1 Av. Ephrussi de Rothschild, 06230 Saint-Jean-Cap-Ferrat", style: "Garden", name: "Ephrussi", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "150€",user_id: test0.id)
space1.photo.attach(io: file, filename: 'Ephrussi.png', content_type: 'image/png')
p space1

file = URI.open('https://images.unsplash.com/photo-1509600110300-21b9d5fedeb7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
space2 = Space.create!(description: "La Villa Thuret est un jardin botanique, situé à Antibes, dans le département français des Alpes-Maritimes.", address: "90 Chem. Gustave Raymond, 06160 Antibes", style: "Garden", name: "Villa Thuret", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "220€",user_id: test2.id)
space2.photo.attach(io: file, filename: 'Villa Thuret', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
space3 = Space.create!(description: "Transformé en hôtel, le Château Eza se trouve dans le village médiéval et piéton d'Èze. Il propose des chambres offrant une vue sur la mer Méditerranée et un restaurant gastronomique.", address: "Le Chateau, Rue de la Pise, 06360 Èze", style: "Garden", name: "Château Eza", check_in: "01/08/2021 15h", check_out: "31/08/2021 16h", price: "350€", user_id: test3.id)
p space3.photo.attach(io: file, filename: 'Château Eza', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1582533404221-9c8db685e30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80')
space4 = Space.create!(description: "Situé dans un palais classé monument historique à Monaco, l'Hôtel Hermitage est un hôtel cinq étoiles de luxe présentant une décoration Belle Époque, à seulement 200 mètres du casino de Monte-Carlo. Il possède un jardin d'hiver ainsi qu'un spa de 7 000 m²..", address: "Sq. Beaumarchais, 98000 Monaco", style: "Garden", name: "Kitchena maravillosa", check_in: "01/06/2021 14h", check_out: "31/08/2021 16h", price: "550€", user_id: test4.id)
p space4.photo.attach(io: file, filename: 'Kitchena maravillosa', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1543489822-c49534f3271f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1189&q=80')
space5 = Space.create!(description: "Antibes Land est un parc forain fixe français situé près d'Antibes sur la Côte d'Azur. La particularité de ce parc réside dans le fait que l'entrée au parc est gratuite. Le visiteur paye pour chaque attraction sur laquelle il désire prendre place, selon le système appelé pay per ride en anglais.", address: "301 Rte de Biot, 06600 Antibes", style: "Pool", name: "Antibes Land", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space5.photo.attach(io: file, filename: 'Antibes Land.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1544984243-ec57ea16fe25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80')
space6 = Space.create!(description: "D’une largeur de 3 mètres pour 12,5 mètres de long, le couloir de nage a été pensé et conçu en étroite collaboration avec Laure Manaudou, afin de vous garantir un confort de nage.", address: "36 Av. Paul Arène, 06000 Nice", style: "Pool", name: "Privacy Pool", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space6.photo.attach(io: file, filename: 'Privacy Pool.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1551491603-7d38b9e605f5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80')
space7 = Space.create!(description: "Piscine disponible ! Réservez en ligne. Le jardin est magnifique ; il y a des fruits sur les arbres et des légumes au potager.
Covid 19​,​ AUCUN problème. Pas de risque sanitaire: le jardin​,​ tout en longueur et sur 1.700 m2​,​ permet une bonne distanciation.", address: "62 Bd du Jardin Exotique, 98000 Monaco", style: "Pool", name: "Oasis Bien Etre", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space7.photo.attach(io: file, filename: 'Oasis Bien Etre.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1589007758669-c58f38192d28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80')
space8 = Space.create!(description: "Bienvenue à vous : Havre de paix exotique dans un charmant jardin paysagé ombragé et ensoleillé.Repos​,​ détente et dépaysement assurés .", address: " Av. de la Prte d'Auteuil, 75016 Paris", style: "Pool", name: "Jardin Paysagé", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space8.photo.attach(io: file, filename: 'Jardin Paysagé.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1565190503580-3fe10c3f12db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
space9 = Space.create!(description: "Antibes Garden Party vous accueille  dans un espace  privatif  et arboré de 2000 M2 à deux pas de la plage d'Antibes Siesta  dans une ambiance tropicale.", address: " 31 All. Jules Guesde, 31400 Toulouse", style: "Pool", name: "Tropical Pool", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space9.photo.attach(io: file, filename: 'Tropical Pool.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1606301261162-30cf80286473?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80')
space10 = Space.create!(description: "On aime : cette cuisine d’été qui s’intègre parfaitement dans le décor !", address:"25 rue du prado 16006 marseille", style: "Outdoor kitchen", name: "Vegetal", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space10.photo.attach(io: file, filename: 'Vegetal.png', content_type: 'image/png')

file = URI.open('https://www.visitedeco.com/wp-content/uploads/Palazzetti-1140x694.jpg')
space11 = Space.create!(description: "On aime : le coin repas installé à l’ombre sous la pergola.", address: "56 bd de cimiez 06100 Nice", style: "Outdoor kitchen", name: "Pergola", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space11.photo.attach(io: file, filename: 'Pergola.png', content_type: 'image/png')

file = URI.open('https://www.societe-les-jardiniers.fr/wp-content/uploads/2020/06/creation-installation-cuisine-jardin-Var-83.png')
space12 = Space.create!(description: "On aime : les lignes chics et élégantes de cette cuisine extérieure.", address: " 45 rue Dante 69002 Lyon", style: "Outdoor kitchen", name: "Design", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space12.photo.attach(io: file, filename: 'Design.png', content_type: 'image/png')

file = URI.open('https://www.deco-et-ambiances.fr/wp-content/uploads/2020/10/1-cuisine-exterieure-couverte-istock.jpg')
space13 = Space.create!(description: "On aime : le total look blanc de cette cuisine d’été !", address: " 185 Bd de Saint Antoine de Ginestière 06200 Nice", style: "Outdoor kitchen", name: "Blanche", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space13.photo.attach(io: file, filename: 'Blanche.png', content_type: 'image/png')

file = URI.open('https://maison.20minutes.fr/wp-content/uploads/2020/05/6-cuisine-d-ete-couverte-et-salle-a-manger-leroy-merlin.jpg')
space14 = Space.create!(description: "Vous êtes le roi du barbecue ? Le champion de la sangria ? L’as de la salade de tomates ? Alors, les cuisines d’été sont faites pour vous ! Faites de la place dans votre jardin ou sur votre terrasse et offrez vous les meilleurs dîners d’été sans bouger de chez vous !", address: " 155 avenue des Champs ELysée 75002 Paris", style: "Outdoor kitchen", name: "Loft", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
space14.photo.attach(io: file, filename: 'Loft.png', content_type: 'image/png')

# p "booking test"
# booking0 = Booking.create!(user: test0, space: space0)
# p booking0
