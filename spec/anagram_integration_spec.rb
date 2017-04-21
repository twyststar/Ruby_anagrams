require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('anagram path', {:type => :feature}) do
  it ('will return affirmative answer if input words are anagram of eachother') do
    visit('/')
    fill_in('word1', :with => 'cat')
    fill_in('word2', :with => 'act')
    click_button('????')
    expect(page).to have_content("That\'s an anagram.")
  end
  it ('will also return if input words are palindromes') do
    visit('/')
    fill_in('word1', :with => 'racecar')
    fill_in('word2', :with => 'racecar')
    click_button('????')
    expect(page).to have_content("is a palindrome.")
  end
end
