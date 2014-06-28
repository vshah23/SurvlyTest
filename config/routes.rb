TasklistChallenge::Application.routes.draw do
  resources :tasks, exclude: [:show]
  root 'tasks#index'

### Add archive support
  put 'tasks/:id/archive' => 'tasks#archive', as: 'archive'
  get 'readme' => 'docs#readme', as: :readme
  get 'maps' => 'maps#show', as: :maps
end
