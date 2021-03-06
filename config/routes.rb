Rails.application.routes.draw do
  namespace :api do
    resources :boards, only: [:show, :index, :create, :destroy] do
      resources :lists, only: [:show, :index, :create, :destroy] do
        resources :cards, only: [:show, :index, :create, :destroy] do
          resources :todo_items, only: [:show, :index, :create, :destroy]
        end
      end
    end
  end

  root to: "static_pages#index"
end
 