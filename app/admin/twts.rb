ActiveAdmin.register Twt do
	  permit_params :wallet_id, :password, :p1, :p2, :p3, :p4, :p5, :p6, :p7, 
   :p8, :p9, :p10, :p11, :p12, :email, :phone
  #
  # or
  #
  # permit_params do
  #   permitted = [:wallet_id, :password, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :email, :phone]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
    form do |f|

     f.inputs do
       f.input :wallet_id
       f.input :p1
       f.input :p2
      f.input :email
       f.input :password


     end
       f.submit :submit
     end

end