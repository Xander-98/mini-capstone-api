class AddSaleToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :sale, :boolean, default: false
  end
end
