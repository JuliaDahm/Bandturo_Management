class AddAttachmentLivePhotoToCustomers < ActiveRecord::Migration
  def self.up
    change_table :customers do |t|
      t.attachment :live_photo
    end
  end

  def self.down
    remove_attachment :customers, :live_photo
  end
end
