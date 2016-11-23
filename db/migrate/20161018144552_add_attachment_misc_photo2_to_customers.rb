class AddAttachmentMiscPhoto2ToCustomers < ActiveRecord::Migration
  def self.up
    change_table :customers do |t|
      t.attachment :misc_photo2
    end
  end

  def self.down
    remove_attachment :customers, :misc_photo2
  end
end
