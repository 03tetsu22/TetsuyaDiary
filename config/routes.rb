Rails.application.routes.draw do
  get 'articles/index'

  devise_for :users
  resources :articles

  post 'article' => 'articles#create'

# get '/top' =>'test_list#top'

root'test_list#top'

# patch '/articles/:id' => 'articles#update', as: 'update#article'

# get '/articles/:id/edit' => 'articles#edit',as: 'edit_article'

end
