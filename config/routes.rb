
Rails.application.routes.draw do
resources :eita do
   resources :todo_items
  end
root "eita#index"
end