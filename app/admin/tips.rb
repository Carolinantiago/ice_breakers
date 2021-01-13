ActiveAdmin.register Tip do 
  controller do
    def create
      @tip = Tip.new(permited_params)
      @tip.admin_user = current_admin_user
      super
    end 

    def permited_params
      params.require(:tip).permit(:tip_description)
    end
  end 

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :tip_description, :user_id
  #
  # or
  #
  #permit_params do
  #  permitted = [:tip_description, :user_id]
  #  permitted << :other if params[:action] == 'create' && current_user.admin? 
  #  permitted
  #end
  
end