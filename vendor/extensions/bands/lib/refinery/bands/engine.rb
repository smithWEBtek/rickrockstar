module Refinery
  module Bands
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Bands

      engine_name :refinery_bands

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "bands"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.bands_admin_bands_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Bands)
      end
    end
  end
end
