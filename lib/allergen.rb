class Fixnum
  define_method(:allergen) do
    score = self.to_i

    allergen_array = []
    is_user_an_idiot = 0
if score <= 255
    until score == 0
    if score >= 128
      score -= 128
      allergen_array.push('cats')
    elsif score >= 64
      score -= 64
      allergen_array.push('pollen')
    elsif score >= 32
      score -= 32
      allergen_array.push('chocolate')
    elsif score >= 16
      score -= 16
      allergen_array.push('tomatoes')
    elsif score >= 8
      score -= 8
      allergen_array.push('strawberries')
    elsif score >= 4
      score -= 4
      allergen_array.push('shellfish')
    elsif score >= 2
      score -= 2
      allergen_array.push('peanuts')
    elsif score >= 1
      score -= 1
      allergen_array.push('eggs')
    else score = 0
      is_user_an_idiot = 1
        end
  end
  if is_user_an_idiot == 0
    array_count = allergen_array.count
    allergen_array.at(array_count - 1).insert(0, "and ")
  allergens = allergen_array.join(', ')
  "You are allergic to #{allergens}"
else "Your number doesn't correspond to any combination of allergies."
end
  else "Your number doesn't correspond to any combination of allergies."
  end
end
end
