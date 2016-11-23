class RemoveProductInterestFromCustomer < ActiveRecord::Migration
  def change
    remove_column :customers, :product_interest, :string
  end
end
