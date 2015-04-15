Rails.application.routes.draw do
  root to: 'candidates#index'
  resources :candidates
  namespace :api do
    namespace :v1 do
      get 'candidates', to: 'candidates#candidates'
      get 'candidates_by_skill', to: 'candidates#candidates_by_skill', as: :candidates_by_skill
    end
  end
end
