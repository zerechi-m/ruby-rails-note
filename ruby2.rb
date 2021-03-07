# # 配列の数値の合計値を出力
#    array = [1,2,3,4,5,6,7]

#    puts array.sum  # 配列.sumで配列内の数値を全部合計

# #配列内の数字を計算
     array = [2,3,4,5,6,7,8,9]
     p array.map{|i| i * 2}    # ブロック|i|に 引数の計算結果が代入される

# # # 配列同士の重複した値を取り出す
#    array1 = [ 1, 3, 55, 66, 12]
#    array2 = [ 2, 4, 6, 3, 12]
#    p array1 & array2

# # 文字列の抽出
#   # 文字列のみ
#     str = "Hello"
#     p str[-2, 2]  # -1は最後から算出

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
   float = 12.234
   p float.round(2)  # 小数点第3位の四捨五入 (N.01234...)の添字
   p float.round(-1) # 整数部の四捨五入

# #[N]桁の小数を切り捨て
   float = 12.234
   p float.floor
   p float.floor(1)
