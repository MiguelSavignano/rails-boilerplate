Rails.application.routes.draw do

  resources :todos
  root 'site#landing'
  #statics
  get 'demo' => 'site#demo'
  get 'faq' => 'statics#faq', as: :faq
  get 'contact' => 'statics#contact', as: :contact
  get 'terms' => 'statics#terms', as: :terms

  #site
  post 'contact' => 'site#contact', as: :send_contact_info

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks'}
  get "user/profile" => "users#profile", as: :profile
end
