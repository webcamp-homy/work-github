class Admin::CategoriseController < ApplicationController
  def index
   @categorys = Category.all
   @category = Category.new
  end
  
  def new
   @category = Category.find(params[:id])
  end
  
  def crate
   @category = Category.find(params[:id])
   @category.save
   redirect_to admin_categorys_path
  end
  
  def edit
   @category = Category.find(params[:id])
  end
  
  def update
   @category = Category.find(params[:id])
   @category.update(category_params)
   redirect_to admin_categorys_path
  end
  
end
