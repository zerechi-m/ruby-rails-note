# バリデーション の記述 -----------------------

  #_ 一意性制約( 重複 の制限) 
validates :name, uniqueness: {case_sensitive: true} # Rails 6.1からの新機能

    # uniqueness の場合に アルファベットの大文字と小文字の区別をするかを記載
              #true の場合は "大文字と小文字の区別を しない "  => "MATSU" == "matsu"： true
              #false の場合は "大文字と小文字の区別を する "   => "MATSU" == "matsu"： false

  #_ 数字の範囲について 
validates :number, numericality: { greater_than_or_equal_to: 10, less_than_or_equal: 20, only_inreger: true }
                                                     #  10 以上 , 20以下
    #_ Rails6.1以降は 
        validates: number, numericality: { in: 10..20} # でも10以上20以下の範囲を定める


# before_validation について ---------------

before_validation :delete_space   # <--------- 下記,nameのバリデーション前に行われる処理

   validates :name, presence: true # <--------- nameのバリデーション前に,半角・全角スペースは削除される

private
def delete_space
    self.name = name.gsub(/[[:space:]]/, "")   #<----//[[:space:]]で半角・全角スペースの削除
      
    # self とは、使用される場所によって形が変わる
    # 今回は テーブル保存時に送られてくる インスタンス
end