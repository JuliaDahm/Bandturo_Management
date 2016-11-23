class AddProductsRecordingColumnToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :products_recording, :boolean
  end
end
