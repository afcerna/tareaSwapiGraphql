Rails.application.routes.draw do
  root 'home#index'
  get 'starship/show', as: :show_starship
  get 'planet/show', as: :show_planet
  get 'person/show', as: :show_person
  get 'film/show', as: :show_film
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
