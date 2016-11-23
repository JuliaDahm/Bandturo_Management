class AddProductsLoanColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_loan, :boolean
  end
end
