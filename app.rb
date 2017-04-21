require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

post('/form') do
  @answer = params.fetch('word1').anagram?(params.fetch('word2'))
  @word1_palindrome = params.fetch('word1').palindrome?()
  @word2_palindrome = params.fetch('word2').palindrome?()
  erb(:index)
end
