class AddProductsWorkshopsToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_workshops, :boolean
  end
end
