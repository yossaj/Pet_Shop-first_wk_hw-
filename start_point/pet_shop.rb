def pet_shop_name(shop)
  shop[:name]
end

def total_cash(shop)
  shop[:admin][:total_cash]
end


def add_or_remove_cash(shop,amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  shop[:pets].length
end

def pets_by_breed(shop, breed_to_check)
  num_breed = []
  pets = shop[:pets]
  for pet in pets
    num_breed.push(breed_to_check) if pet[:breed] == breed_to_check
  end
  return num_breed
end



def find_pet_by_name(shop,name)
   for pet in shop[:pets]
     if pet[:name] == name
       return pet
     end
   end
   return nil
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      pet.clear
    end
  end
end


def add_pet_to_stock(shop, lastest_pet)
    shop[:pets] << lastest_pet
end

def customer_cash(customer)
    return customer[:cash]
end

def remove_customer_cash(customer, amount)
     customer[:cash] -= amount
end

def customer_pet_count(custo)
      custo[:pets].count
end

def add_pet_to_customer(customer, pet)
  new_pet = customer[:pets]
       new_pet.push(pet)
end


def customer_can_afford_pet(custo, shop)
  arr = []
  for pet in @pet_shop[:pets]
     arr.push(pet[:price])
  end
  return arr.min < custo[:cash]
end


def sell_pet_to_customer(shop, pet_name, customer)
amount = 0
new_pet = []
  for pet in shop[:pets]
    if pet[:name] == pet_name
      customer[:pets].push(pet)
      amount += pet[:price]
      customer[:cash] -= amount
      shop[:admin][:total_cash] += amount
      shop[:admin][:pets_sold] += 1
    end
  end
end
