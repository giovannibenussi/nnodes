class CreatePiezas < ActiveRecord::Migration
  def change
    create_table :piezas do |t|
      t.string :nombre
      t.integer :cantidad
      t.integer :auto_id

      t.timestamps null: false
    end
  end
end
