def get_name(person)
  return person[:name]
end

def fav_tv_show(person)
  return person[:favourites][:tv_show]
end

def check_if_like_food(person, food)
  #person[:favourites][:snacks] == food ? true : false
  if person[:favourites][:snacks][0] == food
    return true
  else
    return false
  end
end

def check_if_like_food_multiple(person, food1, food2)
  if person[:favourites][:snacks][0] == food1 && person[:favourites][:snacks][1] == food2
    return true
  else
    return false
  end
end

def adding_friends(person, friend)
  person[:friends].push(friend)
end

def remove_friends(person, friend)
  person[:friends].delete(friend)
end

# def pizza_money(people)
#   pizza_money_total = 0
#   for person in people
#     return pizza_money_total += person[:monies]
#   end
# end

def pizza_money(people)
  pizza_money_total = 0
  for person in people
    pizza_money_total += person[:monies]
  end
  return pizza_money_total
end

def loan_money_from_to(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
  return lendee[:monies]
end

def if_friends_is_zero(people)
  lonelies = []
  for person in people
    if person[:friends].length == 0
      lonelies.push(person[:name])
    end
  end
  return lonelies
end
