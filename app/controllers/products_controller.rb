class ProductsController < ApplicationController
  def first
    product = Product.first
    render json: product.as_json
  end

  def all
    products = Product.all
    render json: products.as_json
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    product.name = params[:name]
    product.price = params[:price]
    product.img_url = params[:img_url]
    product.description params[:description]
  
    product.save

    render json: product.as_json
  end
end
