json.data do
    json.receta do
        json.id @receta.id
        json.nombre @receta.nombre
        json.valoracion @receta.valoracion
        json.porciones @receta.porciones
    end
end