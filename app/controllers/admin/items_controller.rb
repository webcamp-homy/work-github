class Admin::ItemsController < ApplicationController
  def index
   @items = Item.all
   @item = Item.new
  end
  def show
   @item = Item.find(params[:id])
  end
  def new
   @item = Item.new
  end
  def create
   @item = Item.find(params[:id])
   @item.save
   redirect_to admin_items_path
  end
  def edit
   @item = Item.find(params[:id])
  end
  def update
  @item = Item.find(params[:id])
  @item.update
  @item.save
  redirect_to admin_items_path
  end
end
