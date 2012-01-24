BipApp::Application.routes.draw do
  resources :users do
    member do
      put :test_respond_with
      get :double_init
    end
  end

  match 'format/:id' => 'format#show'

  root :to => "users#index"
end
