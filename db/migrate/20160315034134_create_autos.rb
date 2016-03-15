class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :marca
      t.string :modelo
      #   Porqué decimal:
      #   http://stackoverflow.com/questions/8514167/float-vs-decimal-in-activerecord
      t.decimal :latitud
      t.decimal :longitud

      t.timestamps null: false
    end
  end
end
