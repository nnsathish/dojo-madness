Rails.application.routes.draw do
  scope :api, format: :json do
    resources :heros, only: %i(index show) do
      resources :abilities, only: :index
    end
    resources :abilities, only: %i(index show)
  end
end
