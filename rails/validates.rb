# バリデーション の記述 -----------------------


validates :name, uniqueness: {case_sensitive: true} # Rails 6.1からの新機能

    # uniqueness の場合に アルファベットの大文字と小文字の区別をするかを記載
              #true の場合は "大文字と小文字の区別を しない "  => "MATSU" == "matsu"： true
              #false の場合は "大文字と小文字の区別を する "   => "MATSU" == "matsu"： false
