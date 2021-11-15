puts "🌱 Seeding spices..."

subaru = Item.create(item_type: "vehicle" , name: "Subaru Forester", cost: 25000)
maryland_house = Item.create(item_type: "home", name: "Single Family Home", cost: 500000)
honda_shadow = Item.create(item_type: "vehicle", name: "Honda Shadow" , cost: 15000)
luxury_pontoon = Item.create(item_type:"vehicle" , name: "Fancy Boat" , cost: 70000)



amy = Person.create(first_name: "Amy", last_name: "Posten", phone_number: 1234567, address: "123 First Street Place, State 12345" , email: "amy@email.com" , DOB: 9-30-1985 , gender: "female")

jane = Person.create(first_name: "Jane" , last_name: "Cho", phone_number: 2222222 , address: "456 First Street Place, State 12345", email: "jane@email.com" , DOB: 11-10-1993, gender: "female")

adam = Person.create(first_name:"Adam" , last_name: "Moore" , phone_number: 3333333, address: "678 First Street Place, State 12345", email: "adam@email.com" , DOB: 4-21-1997, gender: "male")

bob = Person.create(first_name: "Bob", last_name: "Smith", phone_number: 4444444 , address: "000 First Street Place, State 12345" , email: "bob@email.com" , DOB: 10-21-1974 , gender: "male")

Loan.create(person_id: amy.id,  item_id: maryland_house.id, current_value: maryland_house.cost)
Loan.create(person_id: jane.id,  item_id: subaru.id, current_value: subaru.cost)
Loan.create(person_id: adam.id,  item_id: honda_shadow.id, current_value: honda_shadow.cost)
Loan.create(person_id: bob.id,  item_id: luxury_pontoon.id, current_value: luxury_pontoon.cost)

puts "✅ Done seeding!"
