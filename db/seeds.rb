# Clean DataBase
p "Nettoyage en profondeur"
Space.destroy_all
User.destroy_all
# Seed pour user
p "Création du admin"
test0 = User.create(email:"david@ducobu.com", password: "ducobu")
test1 = User.create(email:"clarisse@hotmail.fr", password: "clarisse")
test2 = User.create(email:"audrey@google.com", password: "audrey")

p test0
p test1
p test2
# Seed pour Spaces
p "Creation du coin de paradis"
space0 = Space.create(type_of: "green", name: "Golf ready", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "150€",user_id: test0.id)
p space0
space1 = Space.create(type_of: "pink", name: "big pool", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "1500€",user_id: test1.id)
p space1
space2 = Space.create(type_of: "blue", name: "corner for tomatoes", check_in: "16/08/21 15h", check_out: "17/08/21 15h", price: "220€",user_id: test2.id)
p space2
