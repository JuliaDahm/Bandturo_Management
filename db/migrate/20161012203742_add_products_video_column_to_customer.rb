class AddProductsVideoColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_video, :boolean
  end
end
