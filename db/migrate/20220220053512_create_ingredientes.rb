class CreateIngrediente < ActiveRecord::Migration[7.0]
  def change
    create_table :ingrediente do |t|
      t.integer :id
      t.string :nombre

      t.timestamps
    end
  end
end
