class OrdersController < ApplicationController
before_action :authenticate_admin
before_action :authenticate_user
    def create
        product = Product.find(params[:product_id])
        subtotal = params[:quantity] * product.price
        tax = subtotal * 0.09
        total = subtotal + tax
        @order = Order.new(
            user_id: current_user.id,
            product_id: params[:product_id],
            quantity: params[:quantity],
            subtotal: subtotal,
            tax: tax,
            total: total      
 )
       if @order.save
        render template: "orders#show"
       else
        render json: {message: orders.errors.full_messages}, status: 422
    end

    def show
        @order = Order.find(params["id"])
        render template: "orders#show"
    end

    def index
        if current_user
        @orders = current_user.orders
        render template: "orders#index"
        else
            render json: [], status: :unauthorized
        end
    end
end
end

