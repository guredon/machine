# -*- coding: utf-8 -*-


### お金を入れる ###

puts''
puts'お金を入れて下さい'
puts'¥100以上で買えます'

yen = yen.to_i + gets.chomp.to_i      # chompで、Enterを除くようにする
                                      # to_iで、整数として扱う
#sam = sam.to_i + yen

while yen < 100
  puts'もっと入れて下さい (´ω `)'
  yen = yen.to_i + gets.chomp.to_i
  #sam = sam.to_i + yen
end


### 飲み物を選択 ###

puts'飲み物を入力して下さい'

drink = gets.chomp

puts 'どうぞ！' + drink.to_s + 'です'


### 当たりつき ###

a = (rand(10))

if a == 7
  puts'おめでとうございます(・∀ ・) 当たりました！もう１本選んで下さい'
  drink = gets.chomp
  puts 'どうぞ！' + drink.to_s + 'です'
end

