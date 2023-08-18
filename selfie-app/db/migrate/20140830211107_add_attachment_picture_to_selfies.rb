class AddAttachmentPictureToSelfies < ActiveRecord::Migration
  def self.up
    change_table :selfies do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :selfies, :picture
  end
end
