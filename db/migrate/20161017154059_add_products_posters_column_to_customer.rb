class AddProductsPostersColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_posters, :boolean
  end
end
