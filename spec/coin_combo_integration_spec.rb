require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change machine path', {:type => :feature}) do
  it('processes the user entry and returns the amount of change they will get') do
    visit('/')
    fill_in('money', :with => 5.24)
    fill_in('quarters', :with => 5)
    fill_in('dimes', :with => 4)
    fill_in('nickels', :with => 3)
    click_button('Show me the money')
    expect(page).to have_content(5.24)
    expect(page).to have_content(3)
  end
end
