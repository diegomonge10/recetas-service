class CreateIngredientes < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredientes do |t|
      t.integer :id
      t.string :nombre

      t.timestamps
    end
  end
end
