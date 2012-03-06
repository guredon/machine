# -*- coding: utf-8 -*-

# puts'' は改行

##### お金を入れる #####

puts''
puts'お金を入れて下さい'
puts'¥100以上で買えます'

yen = yen.to_i + gets.chomp.to_i      # chompで、Enterを除くようにする
                                      # to_iで、整数として扱う

while yen < 100
  puts'もっと入れて下さい (´ω `)'
  yen = yen.to_i + gets.chomp.to_i
end


##### 飲み物を選択 #####

puts''
puts'飲み物を入力して下さい'

drink = gets.chomp

puts''
puts 'どうぞ！' + drink.to_s + 'です'
puts''

yen = yen - 100                       # 飲み物を買ったので、100円を引く 


##### 当たりつき #####

a = (rand(10))

# 当たり（１回目）
if a == 7 
  
  puts'おめでとうございます(・∀ ・) 当たりました！もう１本選んで下さい'
  drink = gets.chomp
  puts 'どうぞ！' + drink.to_s + 'です'
  puts''
  a = (rand(10))


# 当たり（２回目）
  if a == 7
    puts'２連チャンｷﾀ━━━━ (ﾟ∀ ﾟ)━━━━ !! もう１本選んで下さい'
    drink = gets.chomp
    puts'どうぞ！' + drink.to_s + 'です'
    puts''
  end
end


##### おつり #####

if yen > 0

  puts 'ありがとうございましたm(_ _)m　おつりは' + yen.to_s + '円です'
  puts''

end

