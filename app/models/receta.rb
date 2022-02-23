class Receta < ApplicationRecord
    has_many :recetaIngredientes, class_name: 'RecetaIngrediente',  foreign_key: 'id_receta'
    has_many :ingredientes, class_name: 'Ingrediente', through: :recetaIngredientes
    has_many :pasos, class_name: 'Paso',  foreign_key: 'id_receta'
end
