require('sinatra')
require('sinatra/reloader')
require('./lib/allergen')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
@result = params.fetch('input')
erb(:result)
end
