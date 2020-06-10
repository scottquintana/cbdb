ActiveAdmin.register Bean do

  form title: 'Create new bean' do |f|
    inputs 'Details' do
      input :roaster_id, as: :select, :collection => Roaster.pluck(:roaster_name, :id)
      input :name
      input :active
     
    end
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :active, :roaster_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :active, :roaster_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
