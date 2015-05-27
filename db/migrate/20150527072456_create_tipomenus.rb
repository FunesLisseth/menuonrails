class CreateTipomenus < ActiveRecord::Migration
  def change
    create_table :tipomenus do |t|
      t.integer :idtipo
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
