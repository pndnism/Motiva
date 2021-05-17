ActiveAdmin.register Todo do
  permit_params :user_id, :todo_content, :deadline, :category_id, :done
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :todo_content, :deadline, :category_id, :done
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :todo_content, :deadline, :category_id, :done]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
