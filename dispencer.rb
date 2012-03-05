# -*- coding: utf-8 -*-


### お金を入れる ###

puts'お金を入れて下さい'
puts'¥100以上で買えます'

yen = gets.chomp.to_i      # chompで、Enterを除くようにする
                           # to_iで、整数として扱う
sam = sam.to_i + yen

while sam < 100
  puts'もっと入れて下さい (´ω `)'
  yen = gets.chomp.to_i        # 文字として、認識してもらう必要がある
  sam = sam.to_i + yen
end


### 飲み物を選択 ###

#if yen > 100

puts'飲み物を入力して下さい'

drink = gets.chomp

puts 'どうぞ！' + drink.to_s + 'です'

#else yen = gets.chomp.to_i      # chompで、Enterを除くようにする

#end


### 当たりつき ###

a = (rand(10))

if a == 7
  puts'おめでとうございます(・∀ ・) 当たりました！もう１本選んで下さい'
  drink = gets.chomp
  puts 'どうぞ！' + drink.to_s + 'です'
end

