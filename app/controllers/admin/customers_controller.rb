class Admin::CustomersController < ApplicationController
def index
  @customers = Customer.all
end
def show
  @customer = Custmoer.find(params[:id])
end
def edit
  @customer = Customer.find(params[:id])
end
def update
   @customer = Customer.find(params[:id])
 if @customer.update(customer_params)
  redirect_to customer_path 
 else
  render :edit 
 end
end

end

