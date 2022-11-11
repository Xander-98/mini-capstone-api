class ProductsController < ApplicationController

def show
   @product = Product.find_by(id: params["id"])
    render template: "products/show"
end

def index
    pp current_user
    @products = Product.all
    render template: "products/index"
end

def create
    product = Product.new(
    name: params[:name],
    price: params[:price],
    url: params[:url],
    description: params[:description]
    )
    if product.save
    @product = product
    render template: "products/show"
    else
        render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
end

def update
    product = Product.find_by(id: params["id"])
    
    product.name = params[:name] || product.name
    product.price= params[:price] || product.price
    product.url= params[:url] || product.url
    product.description= params[:description] || product.description

    if product.save
    @product = product
    render template: "products/show"
    else
        render json: {errors: product.errors.full_messages}, status: unprocessable_entity
    end
end

def destroy
    product_id = params[:id]
    product = Product.find(product_id)
    product.destroy
    render json: {message: "Product has been deleted!"}
end

end

