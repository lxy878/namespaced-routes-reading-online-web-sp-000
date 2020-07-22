Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  # get '/admin/stats', to: 'stats#index'
<<<<<<< HEAD
  # scope '/admin', module: 'admin' do .... end
  namespace :admin do
=======
  scope '/admin' do
>>>>>>> 6db871c059abaea4bd45bddc47b829631b41e3d7
    resources :stats, only: [:index]
  end
  root 'posts#index'
end
