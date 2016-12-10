ActiveAdmin.register Tag do

permit_params :name

    form do |f|
        inputs "Добавить новый тег" do
            input :name
        end
        actions
    end

end
