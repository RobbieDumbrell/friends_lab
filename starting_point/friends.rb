
# 1.
def get_name(person)
  return person[:name]
end


# 2.
def fav_tv_show(person)
  return person[:favourites][:tv_show]
end


# 3.
def check_if_like_food(person, food)
  if person[:favourites][:snacks].include?(food)
    return true
  else
    return false
  end
end


# 4.
def add_friend(person, friend)
  person[:friends].push(friend)
end


# 5.
def remove_friend(person, friend)
  person[:friends].delete(friend)
end


# 6.
def total_money(people)
  money_total = 0
  for person in people
    money_total += person[:monies]
  end
  return money_total
end


# 7.
def loan_money_from_to(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end


# 8.
def all_fav_foods(people)
  fav_foods_array = []
  for person in people
    fav_foods_array += person[:favourites][:snacks]
  end
  return fav_foods_array
end


# 9.
def friends_is_zero(people)
  lonelies = []
  for person in people
    if person[:friends].length == 0
      lonelies.push(person[:name])
    end
  end
  return lonelies
end
