require 'sinatra/base'

require('./controllers/ApplicationController')
Dir.glob('./{controllers,models,helpers}/*.rb').each { |file| require file }

map('/') { run ApplicationController }
#map('/accounts') { run AccountsController }
#map('/items') { run ItemsController }
#map('/categories') { run CategoriesController }
