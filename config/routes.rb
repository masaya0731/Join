Rails.application.routes.draw do

  root to: 'public/homes#top'
  get '/about', to: 'public/homes#about'

  # ユーザー
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  namespace :public do
    resources :users, only: %i[show edit update]
  end



  # 管理者
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

end
