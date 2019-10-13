class OrderBroadcastJob < ApplicationJob
  queue_as :default

  def perform(order)
    ActionCable.server.broadcast 'order_channel', item: render(order)
  end

  private
  
  def render(order)
    ApplicationController.renderer.render(partial: 'orders/order', locals: {order: order})
  end
end