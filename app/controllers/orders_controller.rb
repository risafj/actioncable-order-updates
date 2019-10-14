class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(create_params)
    @order.save
  end

  private

  def create_params
    params.permit(:item)
  end
end
