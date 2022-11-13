class OrdersController < ApplicationController

    def create
        order = Order.new(
            user_id: params[:user_id],
            product_id: params[:product_id],
            quantity: params[:quantity],
            subtotal: ,
            tax: subtotal * 0.06,
            total: subtotal + tax
        )
       if order.save
        render json: order.as_json
       else
        render json: {message: orders.errors.full_messages}, status: 422
    end

    def show
        orders = Order.find(params["id"])
        render json: orders.as_json
    end

    def index
        order = Order.all 
        render json: order.as_json
    end

end
