Spree::Core::Engine.routes.draw do
  devise_for :spree_user,
             class_name: Spree.user_class,
             only: [:omniauth_callbacks],
             controllers: { omniauth_callbacks: 'spree/omniauth_callbacks' },
             path: Spree::SocialConfig[:path_prefix]
  # resources :user_authentications

  namespace :admin do
    resources :authentication_methods
  end
end
