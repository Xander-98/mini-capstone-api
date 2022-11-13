class Order < ApplicationRecord
belongs_to :user
belongs_to :product
end
#   Create Order controller
# 1. Ask User to select product to buy
# 2. A quantity of selected product is put into order model with user id
# 3. All other oder model functions such as subtotal, tax, total would be applied.
# 4. Display the the selected product for the total price to assure it's what the user wants
# 5. User confirms and successfully orders product