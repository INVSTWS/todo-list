Rails.application.routes.draw do
post '/', to: 'todos#create'
root 'todos#index'
end
