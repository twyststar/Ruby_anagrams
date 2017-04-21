require('rspec')
require('anagram')

describe('String#anagram') do
  it('will compare two inputs and return if they are anagrams') do
    expect('cat'.anagram?('act')).to eq("That's an anagram.")
  end
end
