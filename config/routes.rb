Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      get     "/cabdrivers",     to: "cabdrivers#index"
      post    "/cabdrivers",     to: "cabdrivers#create"
      get     "/cabdrivers/:id", to: "cabdrivers#show"
      put     "/cabdrivers/:id", to: "cabdrivers#update"
      delete  "/cabdrivers/:id", to: "cabdrivers#destroy"
    end
  end
end