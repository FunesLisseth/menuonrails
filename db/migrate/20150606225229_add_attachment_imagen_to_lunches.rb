class AddAttachmentImagenToLunches < ActiveRecord::Migration
  def self.up
    change_table :lunches do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :lunches, :imagen
  end
end
