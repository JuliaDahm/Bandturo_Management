class AddAttachmentMainPhotoToCustomers < ActiveRecord::Migration
  def self.up
    change_table :customers do |t|
      t.attachment :main_photo
    end
  end

  def self.down
    remove_attachment :customers, :main_photo
  end
end
