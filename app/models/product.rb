class Product < ApplicationRecord

    def friendly_created_at
        created_at.strftime("%B %e, %Y")
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
