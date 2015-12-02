class ItemsController < ApplicationController

  get '/splat' do
    erb :Splat
  end

  get '/splat/create' do
    @items = ItemsModel.new
  end

end
