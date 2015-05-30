class RoastsController < InheritedResources::Base

  private

    def roast_params
      params.require(:roast).permit(:name, :roast_type, :description, :picture, :brand_id)
    end
end

