require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('/', {:type => :feature}) do
  it("properly opens up the webpage") do
    visit('/')
    expect(page).to have_content(':D')
  end
  it("takes us to /title when submit button is pressed") do
    visit('/')
    fill_in('title', :with=>'Hello world')
    click_button('Josue will format your title')
    expect(page).to have_content("Title")
  end
end
