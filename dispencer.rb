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

  def sum
   @a = @a - 100                           # 飲み物を買ったので、100円を引く 
  end

end

yen = Okane.new                             # インスタンス変数を yen に代入
yen.insert



##### 飲み物を選択 #####

class Nomimono

puts''
puts'飲み物を入力して下さい'

  def selection 
    @b = gets.chomp.to_s
  end

end

drink = Nomimono.new 

puts 'どうぞ！ (・へ・)つ ' + drink.selection + 'です'
puts''

puts yen.sum



##### 当たりつき #####

class Atari

  def random
    @c = (rand(1))

    if @c == 0 

      puts'おめでとうございます(・∀ ・) 当たりました！もう１本選んで下さい'
      @d = gets.chomp.to_s
      puts 'どうぞ！ (・へ・)つ ' + @d + 'です'
      puts''
    
    end

end


#drink = Atari.new
#drink.random


z = Atari.new



# 当たり（１回目）
#if z.random == 7 
  
  #puts'おめでとうございます(・∀ ・) 当たりました！もう１本選んで下さい'
  #drink.selection = gets.chomp
  #puts 'どうぞ！' + drink.to_s + 'です'
  #puts''
   ##z = (rand(10))


# 当たり（２回目）
if z.random == 7
    puts'２連チャンｷﾀ━━━━ (ﾟ∀ ﾟ)━━━━ !! もう１本選んで下さい'
    drink.selection = gets.chomp
    puts'どうぞ！' + drink.to_s + 'です'
    puts''
  end
end



##### おつり #####


if yen > 0

  puts 'ありがとうございましたm(_ _)m　おつりは' + yen.to_s + '円です'
  puts''

end



