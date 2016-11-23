class AddProductsPhotosColumnsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_photos, :boolean
  end
end
