module Refinery
  module Bands
    module Admin
      class BandsController < ::Refinery::AdminController

        crudify :'refinery/bands/band',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def band_params
          params.require(:band).permit(:name, :style, :base_fee, :band_image_id)
        end
      end
    end
  end
end
