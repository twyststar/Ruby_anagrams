require('rspec')
require('anagram')

describe('String#anagram') do
  it('will compare two input words of the same case and return if they are anagrams') do
    expect('cat'.anagram?('act')).to eq("That's an anagram.")
  end
  it('will compare two input words with letters in different case and return if they are anagrams') do
    expect('Cat'.anagram?('acT')).to eq("That's an anagram.")
  end
  it('will compare two inputs longer than one word and return if they are anagrams') do
    expect('Cat is crazy'.anagram?('act racy siz')).to eq("That's an anagram.")
  end
end
