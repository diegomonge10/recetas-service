json.data do
    json.recetas do
        json.receta do
            json.array! @receta do |receta|
                    json.id receta.id
                    json.nombre receta.nombre
                    json.valoracion receta.valoracion
                    json.porciones receta.porciones
                    json.ingredientes do
                        json.array! receta.recetaIngredientes do |recetaIngrediente|
                        json.nombre recetaIngrediente.ingrediente.nombre
                        json.cantidad recetaIngrediente.cantidad
                        json.unidad recetaIngrediente.ingrediente.unidad
                        end
                    end
                end
        end
    end
end