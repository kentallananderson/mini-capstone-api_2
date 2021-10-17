class ProductsController < ApplicationController
  def first
    product = Product.first
    render json: product.as_json
  end

  def all
    products = Product.all
    render json: products.as_json
  end
end
