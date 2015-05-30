class BrandsController < InheritedResources::Base

  def show
  	@brand = Brand.find(params[:id])
  end 
  private

    def brand_params
      params.require(:brand).permit(:name, :phone, :website, :picture)
    end
end

