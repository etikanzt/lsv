class ProductsController < ApplicationController
  def index
  	    if params[:name].present?
  	    @products = Product.first
  	    end
  end
  def show
  	 if params[:name].present?
  	    @product = Product.first
  	    @result= "success" 
     else
     	 @product = Product.first
     	@result="failure"
     end

  	end
end
