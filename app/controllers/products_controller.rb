class ProductsController < ApplicationController

  def index

  end

  def add
    @item = Item.find(params[:id])

# Load the cart from the session, or create a new empty cart.
    cart = session[:cart] || []
    cart << @item.id

# Save the cart in the session.
    session[:cart] = cart
  end
end
