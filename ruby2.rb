# 配列の数値の合計値を出力
   array = [1,2,3,4,5,6,7]

   puts array.sum  # 配列.sumで配列内の数値を全部合計

# 文字列の抽出
  # 文字列のみ
    str = "Hello"
    p str[-2, 2]  # -1は最後から算出

  # sliceメソッド
  p str.slice(-2, 2)