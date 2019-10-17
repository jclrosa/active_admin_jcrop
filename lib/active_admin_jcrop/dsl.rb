module ActiveAdminJcrop
  module DSL
    
    def jcropable
      member_action :jcropper, method: :put do
        Asset.find(resource.id).active_admin_crop! params[:image_data]
        
        respond_to do |format|
          format.js { render json: true }
        end
      end
    end


  end
end
