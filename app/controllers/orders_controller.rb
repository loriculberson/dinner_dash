class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.reverse
  end

  def show
    @order = Order.find(params[:id])
    authorize! :view, @order
  end

  def create
    if current_user
      order = Order.create(user_id: current_user.id)
      cart.create_order_items(order)
      session.delete(:cart)
      TwilioNotifier.new(order).notify
      flash[:success] = "Your order has been created."
      redirect_to order
    else
      flash[:danger] = "Please login to checkout."
      redirect_to cart_items_path
    end
  end
end
