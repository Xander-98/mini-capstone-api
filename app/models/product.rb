class Product < ApplicationRecord
    belongs_to :supplier
    has_many :images
    has_many :orders
    validates :name, presence: true, uniqueness: true
    validates :price, presence:, numericality: { greater_than: 0}
    validates :description, presence: true, length: { minimum: 10, maximum: 500}
    
    def friendly_created_at
        # created_at.strftime("%B %e, %Y")
    end

    def is_discounted?
            price < 10
    end
    
    def tax
        tax = price * 0.09
        tax
    end

    def total
        total = tax + price
        total
    end
end
