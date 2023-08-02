ActiveAdmin.register LawyerDetail do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :license_no, :user_id, :practice_court_name, :practice_field_name, :experience, :city, :consultation_fees
  #
  # or
  #
  permit_params do
    permitted = [:license_no, :user_id, :practice_court_name, :practice_field_name, :experience, :city, :consultation_fees]
    permitted << :other if params[:action] == 'create' 
    permitted
  end
  
end
