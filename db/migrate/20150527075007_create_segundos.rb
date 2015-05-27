class CreateSegundos < ActiveRecord::Migration
  def change
    create_table :segundos do |t|
      t.integer  :idsegundo
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
