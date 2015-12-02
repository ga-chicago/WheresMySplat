class ItemsController < ApplicationController

  get '/splat' do

      @item = ItemsModel.all
      erb :Splat_index

  end

  get '/splat/create' do

    @item = ItemsModel.new

    @item.name = params[:name]
    @item.quantity = params[:quantity]

    erb :students_create

  end

  get '/splat/edit/:id' do

    @id = params[id]
    @item = ItemModel.find(@id)

    erb :splat_edit
  end

  post '/splat/create' do

    @item = ItemsModel.new

    @item.name = params[:name]
    @item.quantity = params[:quantity]

    erb :splat_create_success
  end

  post '/splat/edit' do

    @item = ItemsModel.find(params[:id])
    @item.name = params[:name]
    @item.quantity = params[:quantity]
    @item.save

    erb :splat_edit_success

  end

  post '/splat/delete' do

    @id = params[:id]
    @item = ItemsModel.find(@id)
    @item.destroy

    erb :splat_delete_success
  end

end
