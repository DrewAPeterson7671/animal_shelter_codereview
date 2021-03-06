Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :animals
  get '/most_recent' => 'animals#most_recent'
  get '/cats' => 'animals#cats'
  get '/dogs' => 'animals#dogs'
end
