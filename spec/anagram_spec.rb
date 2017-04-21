require('rspec')
require('anagram')

describe('String#anagram') do
  it('will compare two inputs of the same case and return if they are anagrams') do
    expect('cat'.anagram?('act')).to eq("That's an anagram.")
  end
  it('will compare two inputs with letters in different case and return if they are anagrams') do
    expect('Cat'.anagram?('acT')).to eq("That's an anagram.")
  end
end
