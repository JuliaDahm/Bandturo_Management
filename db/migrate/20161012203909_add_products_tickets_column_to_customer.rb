class AddProductsTicketsColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_tickets, :boolean
  end
end
