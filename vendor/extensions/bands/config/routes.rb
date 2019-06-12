Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :bands do
    resources :bands, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :bands, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :bands, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
