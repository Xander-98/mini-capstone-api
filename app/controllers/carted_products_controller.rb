class CartedProductsController < ApplicationController

    def create
        cart = CartedProduct.new(
            product_id: params[:product_id],
            quantity: params[:quantity],
            user_id: params[:user_id],
            order_id: params[:order_id],
            status: params[:status]
        )
        cart.save
        render json: cart
    end

end