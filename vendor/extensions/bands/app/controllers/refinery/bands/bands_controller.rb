module Refinery
  module Bands
    class BandsController < ::ApplicationController

      before_action :find_all_bands
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @band in the line below:
        present(@page)
      end

      def show
        @band = Band.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @band in the line below:
        present(@page)
      end

    protected

      def find_all_bands
        @bands = Band.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/bands").first
      end

    end
  end
end
