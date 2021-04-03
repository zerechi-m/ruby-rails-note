# Rspec の起動方法 ------------

#[ gemfile 内]
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
  # Rspec関連の追加
  gem 'rspec-rails', '~>4.0.0'   #<----- 追加
  gem 'factory_bot_rails'         #<----- 追加 

  # テスト入力用のgem
  gem 'gimei'                    #<----- 追加 ランダム入力内容 日本語人名・住所
  gem 'faker'                    #<----- 追加 ランダム入力内容 
end

# bundle install後-------

# [ターミナル]
# % rails g rspec:install  を行う

# 生成された .rspec のファイルに 
#       --require spec_helper
#       --format documentation    #<----エラー内容表示の為の記述を加える 
