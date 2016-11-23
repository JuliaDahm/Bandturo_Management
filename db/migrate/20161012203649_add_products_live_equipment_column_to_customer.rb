class AddProductsLiveEquipmentColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_live_equipment, :boolean
  end
end
