ActiveAdmin.register HabitRecord do
  permit_params :date, :done, :count
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :habit_id, :date, :done, :count
  #
  # or
  #
  # permit_params do
  #   permitted = [:habit_id, :date, :done, :count]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
