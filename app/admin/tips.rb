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

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :tip_description
    end
    f.actions
  end
  
end