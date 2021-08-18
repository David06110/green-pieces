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
space0 = Space.create(type_of: "greens", name: "Golf ready", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "150€",user_id: test0.id)
p space0
space1 = Space.create(type_of: "pink", name: "big pool", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
p space1
space2 = Space.create(type_of: "blue", name: "corner for tomatoes", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "220€",user_id: test2.id)
p space2
space3 = Space.create(type_of: "pool", name: "Piscine du soleil", check_in: "01/08/2021 15h", check_out: "31/08/2021 16h", price: "350€", user_id: test3.id)
p space3
space4 = Space.create(type_of: "outdoor_kitchen", name: "Kitchena maravillosa", check_in: "01/06/2021 14h", check_out: "31/08/2021 16h", price: "550€", user_id: test4.id)
p space4


# p "booking test"
# booking0 = Booking.create!(user: test0, space: space0)
# p booking0
