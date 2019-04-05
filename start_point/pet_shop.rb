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
