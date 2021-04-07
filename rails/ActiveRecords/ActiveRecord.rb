# present? と exists?の違いについて、

# ActiveRecordで条件にマッチしたレコードをの存在確認をする際には
 
Model.where(content).present? #を使用するとDBのレコードを全てを取得して
                              #条件に該当するかを確認する為、DBのレコード数が多いと処理時間がかかる。

Model.where(content).exists? 

#.exists?では、条件に該当するレコードを一件でも取得するとそこで探索を終了するため、処理時間が軽減される。