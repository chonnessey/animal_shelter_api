Rails.application.routes.draw do
  resources :animals do
    collection do
      get 'dogs'
      get 'cats'
    end
  end
end

