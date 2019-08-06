Rails.application.routes.draw do
  # resources :trash_collectors do
  #   resources :orders, shallow: true
  # end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :orders, only: [ :index, :create, :update, :destroy, :show ]
      get "/trash_collectors/:trash_collector_id/orders", to: "trash_collectors#my_orders"
      get "/orders/:id", to: "trash_collectors#mark_as_done"
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
