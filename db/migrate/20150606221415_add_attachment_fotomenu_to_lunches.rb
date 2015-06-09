class AddAttachmentFotomenuToLunches < ActiveRecord::Migration
  def self.up
   # change_table :lunches do |t|
  #    t.attachment :fotomenu
  #  end
  add_attachment :lunches, :fotomenu
  end

  def self.down
    remove_attachment :lunches, :fotomenu
  end
end
