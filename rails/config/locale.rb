# アプリケーションの日本語化 -----------

[アプリ名/ config/application.rb]

module アプリ名
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.i18n.default_locale = :ja   #<--- 追加  :ja => japanese
    config.time_zone = 'Asia/Tokyo'    #<--- 追加  日本時間に変更
  end
end

  # locals ファイルに ja.yml ファイルを新規作成して、
