require('rspec')
require('anagram')

describe('String#anagram') do
  it('will return not an anagram if input lengths are not equal') do
    expect('catt'.anagram?('act')).to eq("Not an anagram.")
  end
  it('will compare two input words of the same case and return if they are anagrams') do
    expect('cat'.anagram?('act')).to eq("That's an anagram.")
  end
  it('will compare two input words with letters in different case and return if they are anagrams') do
    expect('Cat'.anagram?('acT')).to eq("That's an anagram.")
  end
  it('will compare two inputs longer than one word and return if they are anagrams') do
    expect('Cat is crazy'.anagram?('act racy siz')).to eq("That's an anagram.")
  end
  it('will ask for correct input if either input does not contain vowels') do
    expect('Ct s crzy'.anagram?('act racy siz')).to eq("Please enter a valid word.")
  end
end
