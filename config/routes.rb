Rails.application.routes.draw do
  resources :animals do
    collection do
      get 'dogs'
      get 'cats'
      get 'cheap_fee'
      get 'puppies'
    end
  end
end

