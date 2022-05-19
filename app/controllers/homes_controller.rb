class HomesController < ApplicationController
  def index
    @products = Product.all
  end

  def add_to_cart
    check_create_cart
    session[:cart].store(params[:id], "quantity 1")
    redirect_to homes_cart_path
  end

  def cart
    @cart_products = session[:cart]
  end

  def remove
    if session[:cart].delete(params[:id])
      redirect_to homes_cart_path
    else
      redirect_to root_path
    end
  end

  private 
  def check_create_cart
    if session[:cart].nil?
      session[:cart] = {}
    end
  end
end
