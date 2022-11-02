class ProductsController < ApplicationController

def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
end

def index
    products = Product.all
    render json: products.as_json
end

end

