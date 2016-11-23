class AddProductsStudioEquipmentColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_studio_equipment, :boolean
  end
end
