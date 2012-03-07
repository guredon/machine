# -*- coding: utf-8 -*-

# puts'' は改行

##### お金を入れる #####

puts''
puts'お金を入れて下さい'
puts'¥100以上で買えます'

class Okane 

  def insert
    @a = @a.to_i + gets.chomp.to_i          # @a は、インスタンス変数
                                            # chompで、Enterを除くようにする
                                            # to_iで、整数として扱う
    while @a < 100
      puts'もっと入れて下さい (´ω `)'
      @a = @a.to_i + gets.chomp.to_i
    end
  end

end

yen = Okane.new                             # インスタンス変数を yen に代入
yen.insert


##### 飲み物を選択 #####

class Nomimono 

puts''
puts'飲み物を入力して下さい'

drink = gets.chomp

puts''
puts 'どうぞ！' + drink.to_s + 'です'
puts''

yen = yen - 100                       # 飲み物を買ったので、100円を引く 

end

##### 当たりつき #####

class Atari

z = (rand(10))

# 当たり（１回目）
if z == 7 
  
  puts'おめでとうございます(・∀ ・) 当たりました！もう１本選んで下さい'
  drink = gets.chomp
  puts 'どうぞ！' + drink.to_s + 'です'
  puts''
  z = (rand(10))


# 当たり（２回目）
  if z == 7
    puts'２連チャンｷﾀ━━━━ (ﾟ∀ ﾟ)━━━━ !! もう１本選んで下さい'
    drink = gets.chomp
    puts'どうぞ！' + drink.to_s + 'です'
    puts''
  end
end

end

##### おつり #####

class Otsuri

if yen > 0

  puts 'ありがとうございましたm(_ _)m　おつりは' + yen.to_s + '円です'
  puts''

end

end


