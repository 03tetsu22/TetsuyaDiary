Rails.application.routes.draw do
  resources :articles

  post 'article' => 'articles#create'

# get '/top' =>'test_list#top'

root'test_list#top'



end
