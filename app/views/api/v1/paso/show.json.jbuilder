json.data do
    json.paso do
        json.id @paso.id
        json.id_receta @paso.id_receta
        json.descripcion @paso.descripcion
        json.orden @paso.orden
    end
end
