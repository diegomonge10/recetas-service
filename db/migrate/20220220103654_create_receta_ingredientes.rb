class CreateRecetaIngredientes < ActiveRecord::Migration[7.0]
  def change
    create_table :receta_ingredientes do |t|
      t.references :receta, null: false, foreign_key: true
      t.references :ingrediente, null: false, foreign_key: true
      t.string :cantidad

      t.timestamps
    end
  end
end
