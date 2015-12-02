class ItemsController < ApplicationController


get '/splat' do

    erb :Splat

end

get '/splat/create' do

  @items = ItemsModel.new

  @items.name = params[:name]

end

get '/splat/edit/:id' do

  @id = params[id]
  @items = ItemModel.find(@id)

end

post '/splat/create' do

  @items = ItemsModel.new

  @items.name = params[:name]

end

post '/splat/edit' do 
