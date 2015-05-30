class BrewsController < InheritedResources::Base

  private

    def brew_params
      params.require(:brew).permit(:brew_type, :grams_coffee, :ounces_water, :duration, :duration_type, :roast_id, :description, :rating)
    end
end

