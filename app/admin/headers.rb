ActiveAdmin.register Header do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :abouts_title, :abouts_sub_title, 
   :abouts_desc, :recover_title,  :recover_desc,
    :recover_sub_title, :r2_title, :r2_sub_title,
     :r2_desc
  #
  # or
  #
  # permit_params do
  #   permitted = [:abouts_title, :abouts_sub_title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form(:html => { :multipart => true }) do |f|
     f.inputs do
  para "Phrase titles"
    f.input :abouts_title, placeholder: "Recovery Speech title"
    f.input :abouts_sub_title, placeholder: "Sub-title "
    f.input :abouts_desc, placeholder: "description"
  
   para "phrase2"
      f.input :recover_title, placeholder: "Recovery Speech title"
    f.input :recover_sub_title, placeholder: "Sub-title "
      f.input :recover_desc, placeholder: "Sub-title "

    para "phrase3"
    f.input :r2_title, placeholder: "Recovery Speech title"
    f.input :r2_sub_title, placeholder: "Sub-title "
         f.input :r2_desc, placeholder: "Sub-title "

     end
  f.actions

   end

end
