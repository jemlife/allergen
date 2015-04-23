require('rspec')
require('allergen')

describe('Fixnum#allergen') do
  it('takes the score of a cat allergen and returns cats') do
    expect(128.allergen()).to(include('cats'))
  end
  it('takes the score of two allergens combined and returns their values') do
    expect(192.allergen()).to(include('cats, pollen'))
  end

  it('takes a score and returns the allergens of the user') do
    expect(141.allergen()).to(include('cats, strawberries, shellfish, eggs'))
end
end
