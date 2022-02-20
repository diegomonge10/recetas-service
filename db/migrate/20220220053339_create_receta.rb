class CreateReceta < ActiveRecord::Migration[7.0]
  def change
    create_table :receta do |t|
      t.integer :id
      t.string :nombre
      t.integer :valoracion
      t.integer :porciones

      t.timestamps
    end
  end
end
