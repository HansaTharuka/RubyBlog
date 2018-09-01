Rails.application.routes.draw do
 
  devise_for :users
  #get 'advertistments/index'
  get 'advertistments/index'
  resources :advertistments

  #you can see root of your site around root
  root 'posts#index',as: 'home'
  
  #Example of reguler route
  #Pages controller and about view
  get 'about' => 'pages#about', as: 'about'

  #Resource routing allows you to quickly declare all of the 
  #ommon routes for a given resourceful controller. Instead of declaring
  #separate routes for your index, show, new, edit, create, update and destroy
  #actions, a resourceful route declares them in a single line of code.

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
