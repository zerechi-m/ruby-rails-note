# deviseにて複数のモデルを作成する際の方法

 gem 'devise'を追加
 [ターミナル] bundle install
 [ターミナル] rails g devise:install

  # ここからは複数のモデルを呼び出す前に、設定への変更を加える

  [config/initializer/devise.rb]

  247行目  # config.scoped_views = false   <---のコメントアウトを外して
            config.scoped_views = true    #<--- に変更

  # その後、各モデルを作成する。
  
  rails g devise user
  rails g devise customer
  
  # 各コントローラーを作成する。

  rails g devise:controllers user
  rails g devise:controllers customer

  #各コントローラーに対応するviewsファイルを作成する

  rails g devise:views users
  rails g devise:views customerss

  # 各コントローラーに対応するように、routes.rb を変更

  devise_for :users, controllers: {             # usersコントローラーに対応するルーティング
    sessions: 'user#sessions',
    passwords: 'user#passwords',
    registrations: 'doctors/registrations'
  }

  devise_for :customers, controllers: {         # customersコントローラーに対応するルーティング
    sessions: 'customers#sessions',
    passwords: 'customers#passwords',
    registrations: 'customers#registrations'
  }
  
