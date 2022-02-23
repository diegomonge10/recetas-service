class Paso < ApplicationRecord
  self.pluralize_table_names = false
  belongs_to :receta, foreign_key: 'id_receta', touch: true
end
