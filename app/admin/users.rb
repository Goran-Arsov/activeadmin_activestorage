ActiveAdmin.register User do
  permit_params :email, :name, :username, :password, :password_confirmation,
               :reset_password_token, :reset_password_sent_at, :remember_created_at

    index do
      selectable_column
      id_column
      column :email
      column :name
      column :username
      column :created_at
      column :updated_at
      actions
    end

    form do |f|
      f.semantic_errors *f.object.errors.keys

      f.inputs do
        f.input :email
        f.input :name
        f.input :username
        f.input :password
        f.input :password_confirmation
        f.input :reset_password_token
        f.input :reset_password_sent_at
        f.input :remember_created_at
      end
      f.actions
    end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
