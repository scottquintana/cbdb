ActiveAdmin.register Bean do

  preserve_default_filters!
  filter :roaster, collection: -> {
    Roaster.all.map { |roast| [roast.roaster_name, roast.id] }
  }
  remove_filter :bean_profile

  show do
    attributes_table_for bean do
      row :name
      attributes_table_for bean.roaster do
        row :roaster_name
        row :email
      end
      row :status
    end

    attributes_table_for bean.bean_profile do
      row :description
      row :region
      row :processing
      row :notes
      row :altitude
      row :roast_level
    end
    active_admin_comments
  end




  form title: 'Create/edit Bean' do |f|
    f.inputs 'Details' do
      f.input :roaster_id, as: :select, :collection => Roaster.pluck(:roaster_name, :id)
      f.input :name
      f.input :status
      f.inputs do
        f.has_many :bean_profile, heading: 'Profile' do |a|
          a.input :description
          a.input :region
          a.input :processing
          a.input :notes
          a.input :altitude
          a.input :roast_level
          a.input :single_origin
         end
      end
     
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :status, :roaster_id,
    bean_profile_attributes: [:id, :bean_id, :altitude, :region, :processing, :notes, :description, :roast_level]
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :active, :roaster_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
