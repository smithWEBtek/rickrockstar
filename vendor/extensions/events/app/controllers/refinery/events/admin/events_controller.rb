module Refinery
  module Events
    module Admin
      class EventsController < ::Refinery::AdminController

        crudify :'refinery/events/event', sortable: false

        private

        # Only allow a trusted parameter "white list" through.
        def event_params
          params.require(:event).permit(:title, :data, :photo_id, :blurb, :refinery_tags)
        end

        protected

        def find_all_events
          # Order by event date
          @events = Event.order("date DESC")
        end

      end
    end
  end
end
