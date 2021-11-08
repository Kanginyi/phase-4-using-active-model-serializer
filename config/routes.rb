Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  # This custom route shows a single movie summary
  get "/movies/:id/summary", to: "movies#summary"

  # This custom route shows ALL movie summaries
  get "/movie_summaries", to: "movies#summaries"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
