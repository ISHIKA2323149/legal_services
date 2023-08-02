ActiveAdmin.register ForumPost do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params do
    permitted = [:forum_thread_id, :user_id, :body]
    permitted << :other if params[:action] == 'create' 
    permitted
  end
  
end
