class AddProductsMasteringColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_mastering, :boolean
  end
end
