class Admin::ItemsController < ApplicationController
  def index
   @items = Item.all
   @item = Item.new
  end
  def show
   @item = Item.find(params[:id])
  end
  def edit
   @item = Item.find(params[:id])
  end
  def update
   @item = Item.find(params[:id])
   @item.update
   redirect_to customer_path
  end
end
