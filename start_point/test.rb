
  @customers = [
    {
      name: "Alice",
      pets: [],
      cash: 1000
    },
    {
      name: "Bob",
      pets: [],
      cash: 50
    }
  ]

  @new_pet = {
    name: "Bors the Younger",
    pet_type: :cat,
    breed: "Cornish Rex",
    price: 100
  }

  @pet_shop = {
    pets: [
      {
        name: "Sir Percy",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "King Bagdemagus",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "Sir Lancelot",
        pet_type: :dog,
        breed: "Pomsky",
        price: 1000,
      },
      {
        name: "Arthur",
        pet_type: :dog,
        breed: "Husky",
        price: 900,
      },
      {
        name: "Tristan",
        pet_type: :dog,
        breed: "Basset Hound",
        price: 800,
      },
      {
        name: "Merlin",
        pet_type: :cat,
        breed: "Egyptian Mau",
        price: 1500,
      }
    ],
    admin: {
      total_cash: 1000,
      pets_sold: 0,
    },
    name: "Camelot of Pets"
  }



# def customer_cash(custo)
#     return custo[1][:cash]
# end
#
# def customer_pet_count(customer)
#       return customer[:pet]
# end
#
# puts customer_cash(@customers)

 #
 # for x in @pet_shop[:pets]
 #   pet = Hash.new
 #   if x[:name] == "Arthur"
 #     puts x.clear
 #   end
 # end


# puts @customers[1][:cash]

# arr = []
# for x in @pet_shop[:pets]
#    arr.push(x[:price])
# end
#
# puts arr.min


# names = []
#  for pet in @pet_shop[:pets]
#    names.push(pet[:name])
#  end
# puts names
# val = names.index("Arthur")
# puts
# puts names[val]


# amount = 0
# sold_pet = Hash.new
for pet in @pet_shop[:pets]
  if pet[:name] == "Arthur"
    # amount = amount + pet[:price]
    @customers[0][:pets] << pet
  end
end

puts @customers[0][:pets]

# puts amount
# puts
# puts @customers[0][:pets]
# puts
# @customers[0][:cash] -= amount
# puts @customers[0][:cash]

# puts
# puts @pet_shop[:admin][:pets_sold] += 1
# customer[:pets].push(sold_pet)
# shop[:admin][:pets_sold] += amount
# customer[:cash] -= amount
# shop[:admin][:pets_sold] += 1
