require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the result path', {:type => :feature}) do
  it('informs user of their allergies') do
    visit('/')
    fill_in('input', :with => 87)
    click_button('Send')
    expect(page).to have_content('pollen', 'tomatoes', 'peanuts', 'shellfish', 'eggs')
  end
end
