json.data do
    json.pasos do
        json.paso do
            json.array! @paso do |paso|
                json.id paso.id
                json.id_receta paso.id_receta
                json.descripcion paso.descripcion
                json.orden paso.orden
            end
        end
    end
end