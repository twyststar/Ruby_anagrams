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
    expect('Cat is cra zy'.anagram?('act racy siz')).to eq("That's an anagram.")
  end
  it('will ask for correct input if either input does not contain vowels') do
    expect('Cat is crazy'.anagram?('ct rcy sz')).to eq("Please enter a valid word.")
  end
  it('will ask for correct input if either input contains vowels') do
    expect('Cat is crazy'.anagram?('ct rcy sz')).to eq("Please enter a valid word.")
  end
  it('will remove any input that is not a word character') do
    expect('Cat i$s crazy'.anagram?('hod mu car#y')).to eq("Not an anagram, but the letters 'cary' are present in both fields.")
  end
  it('will identify antigram when no letters are in both inputs') do
    expect('Cat is crazy'.anagram?('hod mu ellwb')).to eq("Antigram! No letter is present in both words.")
  end
end
