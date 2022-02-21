json.data do
    json.receta do
        json.id @receta.id
        json.nombre @receta.nombre
        json.valoracion @receta.valoracion
        json.porciones @receta.porciones
        json.ingredientes do
            json.array! @receta.recetaIngredientes do |recetaIngrediente|
            json.nombre recetaIngrediente.ingrediente.nombre
            json.cantidad recetaIngrediente.cantidad
            end
        end
    end
end