Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  get "/" => "home#top"
  get "/top" => "home#top"
  get "/login" =>"home#login"

  #resources :categories
    #categoriesは管理者しか更新しないのでviewやアクションの定義の必要なし
    ##
    
  resources :habit_records, only: [:update]
    #habit_recordsのindex（habitごとのhabit_recordsの記録）はhabitのshowアクションで表示する。
  resources :users,  except: [:index]
    # indexはいらない（ユーザー一覧ののページは必要なし）
  resources :projects, except: [:new]
  get "/closed_projects" => "projects#closed"
    # "/projects"上の＋ボタンで新しいプロジェクトを作るのでnewは不要。

  resources :project_todos, only: [:create, :update, :destroy]
    # viewはいらない。管理者のみがが閲覧できればOK.
  resources :todos, except: [:new]
    # "/projects"や"/habits"上のボタンで新しいtodoを作るのでnewは不要。
  resources :habits, except: [:new]
  get "/habituation" => "habits#habituation"
    # "/habits"上の＋ボタンで新しいプロジェクトを作るのでnewは不要。


  # これを見ながらルーティングしてます。
  # https://pikawaka.com/rails/resources

  # resources　:tweetsの場合
  # get 'tweets'     => 'tweets#index'
  # get 'tweets/:id' => 'tweets#show'
  # get 'tweets/new' => 'tweets#new'
  # post 'tweets' => 'tweets#create'
  # get 'tweets/:id/edit' => 'tweets#edit'
  # patch 'tweets/:id'  => 'tweets#update'
  # delete 'tweets/:id' => 'tweets#destroy'

  # 一部だけ使うときはonlyをつける。 ex.resources :users, only: [:edit, :new]
  # 一部だけ使わないときはexceptをつける。 ex.resources :users, except: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
