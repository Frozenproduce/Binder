ActiveAdmin.register AdminUser do
  
  form do |f|
    f.inputs 'Administrator' do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end

  index do
    column :email
    column :last_sign_in_at
    column :last_sign_in_ip
    default_actions
  end
  
end
