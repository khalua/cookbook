R20130214Cookbook::Application.routes.draw do
  resources :books, :ingredients, :recipes
  root :to => 'books#index'
end
