class RootController < ApplicationController
  
  def index
    @products = {}
    Product.categories.map do |k, _|
      products = Product.where(:category => k)
      @products[k.to_sym] = products
    end
  end
  
end
