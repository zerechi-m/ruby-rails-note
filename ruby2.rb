# 配列の数値の合計値を出力
   array = [1,2,3,4,5,6,7]

   puts array.sum  # 配列.sumで配列内の数値を全部合計

# 文字列の抽出
  # 文字列のみ
    str = "Hello"
    p str[-2, 2]  # -1は最後から算出

  # sliceメソッド
  p str.slice(-2, 2)

  # 文字列を配列に格納
  p "abcdifg".chars # 一文字ずつ配列に格納

  #正規表現 sub gsub
   str = "abcdefg"
   p str.sub(/[abcd]/, "2")  #[abcd]の中で最初にmatchしたものを引数2に置き換える

   p str.gsub(/[aedg]/, "Z")  #[aedg]の全てのmatchしたものを引数2に置き換える

   #正規表現 match?
   str = "HELLO"
   p str.match(/H/)   # 一番最初にマッチした文字列を<MatchData>で取得

   p str.match?(/\A*[lo]+\z/i) # 該当する文字列があればtrue,なければfalse
                           # iで小文字と大文字どちらでも該当
