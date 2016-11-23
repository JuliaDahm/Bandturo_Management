class AddProductsMixingColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_mixing, :boolean
  end
end
