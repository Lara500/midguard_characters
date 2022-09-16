Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'main_page#show'

  resources :characters, only: %i[new create]

  resource 'character_wizard', only: [:show, :create]
  get "/kind_and_benefits" => "character_wizards#kind_and_benefits"
end
