module Refinery
  module Taggings
    module Admin
      class TaggingsController < ::Refinery::AdminController

        crudify :'refinery/taggings/tagging'

        private

        # Only allow a trusted parameter "white list" through.
        def tagging_params
          params.require(:tagging).permit(:tag_id, :event_id, :band_id)
        end
      end
    end
  end
end
