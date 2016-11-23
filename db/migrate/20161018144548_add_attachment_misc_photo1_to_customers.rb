class AddAttachmentMiscPhoto1ToCustomers < ActiveRecord::Migration
  def self.up
    change_table :customers do |t|
      t.attachment :misc_photo1
    end
  end

  def self.down
    remove_attachment :customers, :misc_photo1
  end
end
