class AddAttachmentPreviewToContentHomes < ActiveRecord::Migration
  def self.up
    change_table :content_homes do |t|
      t.has_attached_file :preview
    end
  end

  def self.down
    drop_attached_file :content_homes, :preview
  end
end
