def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop,ammount)
  shop[:admin][:total_cash] += ammount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,ammount)
  shop[:admin][:pets_sold] += ammount
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  result = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      result.push(:name)
    end
  end
  return result
end

def find_pet_by_name(shop, name)
  result = nil
  for pet in shop[:pets]
    if pet[:name] == name
      result = pet
    end
  end
  return result
end

def remove_pet_by_name(shop, name)
  pet = find_pet_by_name(shop, name)
  shop[:pets].delete(pet)
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  cash = customer[:cash]
end
# modify later to look for the customer as well

def remove_customer_cash(customer, ammount)
  customer[:cash] -= ammount
end

def customer_pet_count(customer)
  count = customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  result = false
  if customer[:cash] >= pet[:price]
    result = true
  end
  return result
end

def sell_pet_to_customer(shop, pet, customer)
  return if pet == nil
  afford = customer_can_afford_pet(customer, pet)
  return if afford == false
  remove_pet_by_name(shop, name)
  add_pet_to_customer(customer, pet)
  ammount = pet[:price]
  remove_customer_cash(customer, ammount)
  add_or_remove_cash(shop,ammount)
  increase_pets_sold(shop,1)
end
