Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create", as: :tasks_create
  get "tasks/:id/edit", to: "tasks#edit", as: :tasks_edit
  patch "tasks/:id", to: "tasks#update", as: :tasks_update
  delete "tasks/:id", to: "tasks#destroy", as: :tasks_destroy
  get "tasks/:id", to: "tasks#show", as: :task
  # Defines the root path route ("/")
  # root "articles#index"
end

# En tant qu’utilisateur, je peux lister des tâches
# En tant qu’utilisateur, je peux afficher les détails d’une tâche
# En tant qu’utilisateur, je peux ajouter une nouvelle tâche
# En tant qu’utilisateur, je peux éditer une tâche (la marquer comme terminée / mettre à jour le titre et les détails)
# En tant qu’utilisateur, je peux supprimer une tâche
