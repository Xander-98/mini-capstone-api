class Category < ApplicationRecord
    has_many :category_products
    has_many :products, through: :category_products


    # def products
    #     result = category_products.each do |category|
    #         category_product.product
    #     end
    #     p result
    # end
end
