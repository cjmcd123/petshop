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

def pets_by_breed(shop, "British Shorthair")
