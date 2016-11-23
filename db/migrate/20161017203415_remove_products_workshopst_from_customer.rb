class RemoveProductsWorkshopstFromCustomer < ActiveRecord::Migration
  def change
    remove_column :customers, :products_workshops, :boolean
  end
end
