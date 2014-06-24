TasklistChallenge::Application.routes.draw do
  resources :tasks, exclude: [:show]
  root 'tasks#index'

### Add completion support
  put 'tasks/:id/archive' => 'tasks#complete', as: 'complete_task'
### Add archive support
  put 'tasks/:id/archive' => 'tasks#archive', as: 'archive_task'
  get 'readme' => 'docs#readme', as: :readme
  get 'maps' => 'maps#show', as: :maps
end
