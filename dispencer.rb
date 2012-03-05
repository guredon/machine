# -*- coding: utf-8 -*-

### お金を入れる ###

puts'お金を入れて下さい'

yen = gets.chomp          # chompで、Enterを除くようにする

while yen != '100'
  yen = gets.chomp        # 文字として、認識してもらう必要がある
end


### 飲み物を選択 ###

puts'飲み物を選んで下さい'

drink = gets.chomp

puts 'どうぞ！' + drink.to_s + 'です'


### 当たりつき ###

a = (rand(10))

if a == 7
  puts'おめでとうございます(・∀ ・) 当たりました！もう１本選んで下さい'
  drink = gets.chomp
  puts 'どうぞ！' + drink.to_s + 'です'
end

