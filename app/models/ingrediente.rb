class Ingrediente < ApplicationRecord
    self.pluralize_table_names = false
    has_many :recetaIngredientes, class_name: 'RecetaIngrediente',  foreign_key: 'id_ingrediente'
    has_many :recetas, class_name: 'Receta', through: :recetaIngredientes
end
