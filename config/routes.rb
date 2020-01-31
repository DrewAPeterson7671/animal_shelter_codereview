Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :animals
  get '/most_recent' => 'animal#most_recent'
  get '/cats' => 'animal#cats'
end
