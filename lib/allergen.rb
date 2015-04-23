class Fixnum
  define_method(:allergen) do
    score = self
    allergen_array = []
    until score == 0
    if score >= 128
      score -= 128
      allergen_array.push('cats')
    elsif score >= 64
      score -= 64
      allergen_array.push('pollen')

    end
  end
  allergens = allergen_array.join(', ')
  "You are allergic to #{allergens}"
end
end
