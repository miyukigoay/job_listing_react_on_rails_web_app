ActiveAdmin.register Requirement do
    permit_params :description, :job_id

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :jobreferences, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:jobreferences, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
