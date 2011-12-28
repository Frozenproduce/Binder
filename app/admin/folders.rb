ActiveAdmin.register Folder do
  
  form do |f|
    f.inputs "Details" do
      f.input :name
    end
    f.buttons
  end
  
  index do
    column :name
    column "Assets" do |a|
      a.assets.count.to_s
    end
    column :access_key
    default_actions
  end

end
