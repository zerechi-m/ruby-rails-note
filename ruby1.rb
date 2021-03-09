# 問1----------------------------------
# hash = { one: 1, two: 2, three:3}

# puts hash.keys    #  .keysはハッシュ構造のキーだけ取り出すメソッド
# puts hash.values  #  .valuesはハッシュ構造の値だけ取り出すメソッド

# 問2----------------------------------
# user_data = [
#   {user: {profile: {name: "george"}}},
#   {user: {profile: {name: "Alice"}}},
#   {user: {profile: {name: "Taro"}}}
# ]

# user_data.each do |user|
#   puts user[:user][:profile][:name]
# end

# 問3----------------------------------

# class Article
#   def initialize(auther, title, content)
#     @auther = auther
#     @title = title
#     @content = content
#   end

#   def info
#     puts "著者: #{@auther}\nタイトル: #{@title}\n本文: #{@content}"
#     # puts "タイトル: #{@title}"
#     # puts "本文: #{@content}"
#   end
# end

# article = Article.new("阿部", "Rubyの素晴らしさについて", "Awesome Ruby!")

# article.info

# 問4----------------------------------

# require "date"

# day = Date.today.wday

# case  day
# when 0
#   puts "今日は日曜日だ"
# when 1
#   puts "今日は月曜日だ"
# when 2
#   puts "今日は火曜日だ"
# when 3
#   puts "今日は水曜日だ"
# when 4
#   puts "今日は木曜日だ"
# when 5
#   puts "今日は金曜日だぁーーーー！"
# when 6
#   puts "今日は土曜日だ"
# end

# 問4 模範解答
# require "date"

# day = Date.today.wday
# days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

# if day == 5
#   puts "今日は#{days[day]}だ！！！"
# else
#   puts "今日は#{days[day]}"
# end
#------------------------------------------------------------

# 問5  times文 -------------------------
# num = 0

# 10.times do | i |
#   i += 1
#   num = num + i
#   p num
# end

#問6 each_with_indexメソッドについて

# def search(num, input)
#   input.each_with_index do | item, i |
#     if num == item
#       p "#{item}は,配列#{i + 1}番目に格納されています"  #trueの処理は,each_with_index文に載せる
#     end
#   end
#   p "#{num}は配列に含まれません"           #falseの配列内の値に該当しない数字の処理は構文の外で処理
# end

# p "---数字を入力してください！！"
# num = gets.to_i
# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]

# search(num, input)

# 問7 ----------------------


# def touroku(name)
#   if name.include?(".")
#     p "#{name}  !エラー!記号は登録できません"
#   elsif name.include?(" ")
#     p "#{name}  !エラー!空白は登録できません"
#   else
#     p "#{name}   ▶︎ 登録が完了しました"
#   end
# end


# p "----名前を入力してください-------"
# name = gets.chomp

# touroku(name)

# # 問9 条件分岐---------------------------

# def branch(num)
#   if num <= 0
#     p "0以下の数字です"
#   elsif num <= 10
#     p "10以下の数字です"
#   else
#     p "10以上の数字です"
#   end
# end

#   p "--------数字の入力----------"
#   input = gets.to_i
#   branch(input)


# 問10 each文の入れ子-------------------

# fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

# def casher(fruits, price)
#   p "#{fruits}の合計金額は#{price}です"
# end

# fruits_price.each do |fruits|
#   sum = 0
#   fruits[1].each do |price|
#     sum += price
#   end
#   casher(fruits[0], sum)
# end

# 問11 if elsif文 ----------------------------------------------

# def in1to10(num, outside_mode)
#   if outside_mode || (num >= 1 && num <= 10)
#     p "true"
#   else
#     p "false"
#   end
# end
# p "--------数字の入力-------------"
# num = gets.to_i
# trueorfalse = [true, false]
# in1to10(num, trueorfalse[gets.to_i])

# 問12 クラスインスタンスの生成

# class Fruits
#   @@sum = 0
#
#   def initialize(name, price)
#     @name = name
#     @price = price
#     @@sum = @@sum + price
#   end
#
#   def self.get_sum
#     p "合計の価格は#{@@sum}円です"
#   end
# end
#
# apple = Fruits.new("りんご", 120 )
# orange = Fruits.new("オレンジ", 200)
# strawberry = Fruits.new("イチゴ", 60)
#
#
# Fruits.get_sum

# # 問13　sliceメソッド-----こん

# def missing_char(string, num)
#   str = string.slice!(num - 1)
#   return str
# end

# string = gets.chomp
# num = gets.to_i

# p missing_char(string, num)
# 問14 if.else問題

# def police_trouble(a, b)
#   if (a && b) || (!a && !b)  # !a だとfalseの時にtrue
#     p "true"
#   else
#     p "false"
#   end
# end

# suspect_a = false
# suspect_b = false
# police_trouble(suspect_a, suspect_b )

# 問15 scanメソッドについて

# def count_hi (string)
#   p string.scan("hi")  # scan("文字")で該当の”文字”を配列に入れて出力するメソッド
#   p string.scan("hi").length
# end

# string = [ "abc hi ho", "ABChi hi", "hihi" ]
# p "番号を入力してください!"
# p "[0]'abc hi ho', [1]'ABChi hi', [2]'hihi'"
# count_hi(string[gets.to_i])

# 問16 indexメソッドについて

# def count_code(string)
#   p string.index("code", 5) # 該当する文字の始まりの字を添字で返す,  数を指定するとその数以降の添字で探す
# end

# string = ["codexxcode", "aaacodebbb", "cozexxcode"]
# count_code("codexxcode")
# count_code("aaacodebbb") 
# count_code("cozexxcode") 

# 問17 時間設定

# def parrot_trouble(hour)
#   if hour >= 7 && hour < 20
#     p "#{Time.now}です！喋れます"
#   else
#     p "現在の時刻は#{Time.now.hour}時です！good night!!"
#   end

# end

# hour = Time.now.hour

# parrot_trouble(hour)


# # 問18 配列内の偶数値のみを取rubyり出す

# def count_evens(array)
#   i = 0
#     array.each do |num|
#       if num.even?
#        i += 1
#       end
#     end
#     p i
# end


# count_evens([2, 1, 2, 3, 4])
# count_evens([2, 2, 0])
# count_evens([1, 3, 5])

# 問19 配列からの値の取り出し include? メソッド 配列の中に引数の値が含まれているか？

# def array123(array)
#   if array.include?(1) && array.include?(2) && array.include?(3)
#     p true
#   else
#     p false
#   end
# end

# array123([1, 1, 2, 3, 1])
# array123([1, 1, 2, 4, 1])
# array123([1, 1, 2, 1, 2, 3])


# 問20 休みか否か
# require "Date"

# def sleep_in(weekday, vacation)
#   if weekday.match?(/[Sun][Satur]/) || vacation == true
#     puts "休みの日なのでゆっくりおやすみくださいzzZ"
#   else
#     puts "旦那、仕事でっせ！早くおきんしゃい！！"
#   end
# end


# weekday = Date.today.strftime("%A")

# vacation = false
# sleep_in(weekday, vacation) 

# 問21 二桁の整数の分解して計算

# def calculation(input) 
#   array = input.chars.map(&:to_i)
#   sum = array.sum
#   mul = array.inject(:*)
#   p sum + mul
# end

# input = gets.chomp
# calculation(input)

# 問22 joinメソッドで配列内の文字列を結合

def extra_end(str)
  array = []
  st = str.slice(-2, 2)
  p st * 3
end

extra_end('Hello')
extra_end('ab')
extra_end('Hi')