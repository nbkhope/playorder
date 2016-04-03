class ProductsController < ApplicationController
  
  def show
  end
  
  def discover
    @products = {}
    Product.categories.map do |k, _|
      products = Product.where(:category => k)
      @products[k.to_sym] = products
    end
  end
  
end
