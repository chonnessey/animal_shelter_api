Rails.application.routes.draw do
  resources :animals do
    collection do
      get 'dogs'
      get 'cats'
      get 'puppies'
    end
  end
end

