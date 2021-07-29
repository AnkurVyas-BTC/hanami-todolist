# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
# get '/todos', to: 'todos#index'
# get '/todos/new', to: 'todos#new'
# post '/todos', to: 'todos#create'

resources :todos
root to: 'todos#index'
