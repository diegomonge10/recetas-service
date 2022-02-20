class RecetaIngrediente < ApplicationRecord
    self.pluralize_table_names = false
    self.primary_key = :id_receta, :id_ingrediente
    belongs_to :receta, foreign_key: 'id_receta'
    belongs_to :ingrediente, foreign_key: 'id_ingrediente'
end
