class OrdersController < ApplicationController
  before_action :authenticate_admin
  def create
    order = Order.new
    user_id: params[:user_id]
    product_id: params[:product_id]
    quantity: params[:quantity]
    subtotal: params[:subtotal]
    tax: 0.05
    total: subtotal * tax 
    order.save
    render json: order
  end 
end
