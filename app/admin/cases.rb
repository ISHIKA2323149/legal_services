ActiveAdmin.register Case do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :case_name, :case_no, :case_description, :case_status, :court_name, :filing_date, :case_category, :additional_notes, :Hearing_date, :user_id
  #
  # or
  #
  permit_params do
    permitted = [:case_name, :case_no, :case_description, :case_status, :court_name, :filing_date, :case_category, :additional_notes, :Hearing_date, :user_id]
    permitted << :other if params[:action] == 'create' 
    permitted
  end
  
end
