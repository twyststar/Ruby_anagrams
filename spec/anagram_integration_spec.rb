require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('anagram path', {:type => :feature}) do
#   it (') do
#   visit('/')
#   fill_in('', :with => '')
#   click_button('')
#   expect(page).to have_content("")
#   end
# end
