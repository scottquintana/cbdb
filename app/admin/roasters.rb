ActiveAdmin.register Roaster do

remove_filter :roaster_contact

  form title: 'Create new roaster' do |f|
      f.inputs 'Details' do
        f.input :email
        f.input :roaster_name
        f.input :password
        f.input :password_confirmation
        f.has_many :roaster_contact, heading: 'Contact Info' do |a|
          a.input :city
          a.input :state
          a.input :zip
          a.input :country
          a.input :website
        end
      end
      f.actions
    end





  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :email, :roaster_name, :password, :password_confirmation, :encrypted_password, 
                 :reset_password_token, :reset_password_sent_at, :remember_created_at,
                 roaster_contact_attributes: [:id, :roaster_id, :city, :state, :zip, :country, :website ]
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :roaster_name, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
