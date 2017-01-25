Rails.application.routes.draw do
  resources :payments
  devise_for :users

  root to: 'visitors#index'

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  get 'reports/subjects' => 'reports#subjects', as: :report_subjects
  get 'visitors' => 'visitors#index'
end
