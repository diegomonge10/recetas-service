class CreatePasos < ActiveRecord::Migration[7.0]
  def change
    create_table :pasos do |t|
      t.integer :id
      t.references :receta, null: false, foreign_key: true
      t.string :descripcion
      t.integer :orden

      t.timestamps
    end
  end
end
