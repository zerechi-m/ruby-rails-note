## ハッシュのキーを配列に入れて取得
# hash = { name: "smith", age: 18}
# p hash.keys       #キー名の取得
# p hash.values     #バリューの取得

## ハッシュに値の追加
 hash = {}
 hash[:age] = 33
 hash.store("name" , "abc") #第一引数[:key],第二引数に値
    p hash[:age] #値の取出しはシンボル型の記入であれば[:key]、
    p hash["name"]  #文字列であれば "key"

# # 配列の数値の合計値を出力
#    array = [1,2,3,4,5,6,7]

#    puts array.sum  # 配列.sumで配列内の数値を全部合計

# # 配列に中身があるかのメソッド
     # array = []
     # p array.any? #中身があればtrue ,なければfalse

# # 配列の値に該当の値はあるかの検索
#     array = ["ruby", "python", "react", "java"]
#     puts array.include?("python")  # true,falseで返す
     
# # 配列内の文字列を結合
     # array = ["H","E","L","L","O"]
     # puts array.join       #各配列の文字列をそのまま連結
     # puts array.join(" ")  #各配列の文字列に空白で区切りを行う


# #配列内の数字を計算
     # array = [2,3,4,5,6,7,8,9]
     # p array.map{|i| i * 2}    # ブロック|i|に 引数の計算結果が代入される
     
# # # 配列同士の重複した値を取り出す
#    array1 = [ 1, 3, 55, 66, 12]
#    array2 = [ 2, 4, 6, 3, 12]
#    p array1 & array2

# # 文字列の抽出
#   # 文字列のみ
    str = "Hello"
    p str[-2, 2] # -1は最後から算出
    p str[-1] = "L"   # 文字列indexの再代入
    p str   

#   # sliceメソッド !をつけると破壊メソッド
#   p str.slice(-2, 2)

#   # 文字列を配列に格納
#   p "abcdifg".chars # 一文字ずつ配列に格納

    # 文字列を数字に変換して配列に格納
   #  p "123456789".chars.map( &:to_i)

# #正規表現 sub gsub
#    str = "abcdefg"
#    p str.sub(/[abcd]/, "2")  #[abcd]の中で最初にmatchしたものを引数2に置き換える

#    p str.gsub(/[aedg]/, "Z")  #[aedg]の全てのmatchしたものを引数2に置き換える

#    #正規表現 match?
#    str = "HELLO"
#    p str.match(/H/)   # 一番最初にマッチした文字列を<MatchData>で取得

#    p str.match?(/\A*[lo]+\z/i) # 該当する文字列があればtrue,なければfalse
#                            # iで小文字と大文字どちらでも該当



# #[N]桁の小数点四捨五入
#    float = 12.234
#    p float.round(2)  # 小数点第3位の四捨五入 (N.01234...)の添字
#    p float.round(-1) # 整数部の四捨五入

# # #[N]桁の小数を切り捨て
#    float = 12.234
#    p float.floor
#    p float.floor(1)

# 日時の表示 strftime
require "date"
require "time"
time = Time.new

p time.strftime(" %Y年 %m月 %d日 %H時 %M分 %S秒 ") # strftime("%~で手軽に表示ができる

# 小数点の表示

# num = 15.to_f + 10  # .to_f で小数点表示

# p sprintf("%.3f",num)    # sprintf("%.3f", num) で小数点第三位までを表示

# splitメソッド

# puts "-----標準入力 splitメソッドの使用方法"
# num = gets 
# p num.split # 標準入力時の 空白・改行を削除して配列に格納