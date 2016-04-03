class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end

  def discover
    @products = {}
    Product.categories.map do |k, _|
      products = Product.where(:category => k)
      @products[k.to_sym] = products
    end
  end

  def new
  end

  def edit
  end
  
end
