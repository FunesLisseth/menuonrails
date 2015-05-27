class CreateEntradas < ActiveRecord::Migration
  def change
    create_table :entradas do |t|
      t.integer :identrada
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
