class ItemsController < ApplicationController

  get '/splat' do

      erb :Splat_index

  end

  get '/splat/create' do

    @items = ItemsModel.new

    @items.name = params[:name]

    erb :students_create

  end

  get '/splat/edit/:id' do

    @id = params[id]
    @items = ItemModel.find(@id)

    erb :splat_edit
  end

  post '/splat/create' do

    @items = ItemsModel.new

    @items.name = params[:name]
    @items.quantity = params[:quantity]

    erb :splat_create_success
  end

  post '/splat/edit' do

    @items = ItemsModel.find(params[:id])
    @items.name = params[:name]
    @items.quantity = params[:quantity]
    @items.save

    erb :splat_edit_success

  end

  post '/delete' do

    @id = params[:id]
    @items = ItemsModel.find(@id)
    @items.destroy

    erb :splat_delete_success
  end

end
