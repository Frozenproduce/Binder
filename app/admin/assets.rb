ActiveAdmin.register Asset do
  
  form do |f|
    f.inputs "Details" do
      f.input :folder
      f.input :name
    end
    f.inputs "Asset" do
      f.input :file, :as => :file
    end
    f.buttons
  end
  
  index do
    column :folder, :sortable => false
    column :name
    column :file
    default_actions
  end
  
end
