class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def index
    @products = Product.all

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end

    render template: "products/index"
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
      sale: params[:sale],
      supplier_id: params[:supplier_id],
    )
    if product.save
      @product = product
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find_by(id: params["id"])

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description

    if product.save
      @product = product
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }, status: unprocessable_entity
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find(product_id)
    product.destroy
    render json: { message: "Product has been deleted!" }
  end
end
