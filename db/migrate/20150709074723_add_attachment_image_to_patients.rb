class AddAttachmentImageToPatients < ActiveRecord::Migration
  def self.up
    change_table :patients do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :patients, :image
  end
end
