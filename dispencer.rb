# -*- coding: utf-8 -*-


class Okane                               ## お金を入れるclass ##

  def insert                              
    @a = @a.to_i + gets.chomp.to_i        # @a は、入れたお金を保持する、インスタンス変数
                                          # chompで、Enterを除くようにする
                                          # to_iで、整数として扱う
    while @a < 100
      puts'もっと入れて下さい (´ω `)'     # お金が100円未満の場合は、追加で入力させる
      @a = @a.to_i + gets.chomp.to_i
    end
  end

  def oturi
   @a = @a - 100                          # 飲み物を買ったので、100円を引く 
  end

end



class Nomimono                            ## 飲み物を入力するclass ##

  def selection 
    @b = gets.chomp.to_s                  # @b は、飲み物の名前を保持する、インスタンス変数
  end

end



class Atari                               ## 当たりクジclass ##

  def random
    @c = (rand(10))                       # @c は、rand関数で出た数字を保持する、インスタンス変数

    if @c == 7                            # もし、@c の数字が７の場合、もう１本もらえる

      puts'当たりました！ ｷﾀ━━━━ (ﾟ∀ ﾟ)━━━━ !! もう１本入力して下さい'
      @b = gets.chomp.to_s
      puts 'どうぞ！ (・へ・)つ ' + @b + 'です'
      puts''
    
    end
  end

end



##### 処理 #####

puts''                                     # puts'' は改行
puts'お金を入れて下さい'
puts'¥100以上で買えます'

yen = Okane.new                            # Okaneクラスを使うため、変数yenを宣言 
yen.insert                                 # insertメソッドを実行する（お金を入力してもらう）

puts''
puts'飲み物を入力して下さい'

drink = Nomimono.new                       # Nomimonoクラスを使うため、変数drinkを宣言 

puts 'どうぞ！ (・へ・)つ ' + drink.selection + 'です'                          # @b で保持している飲料名を出力する
puts''

hit = Atari.new                            # Atariクラスを使うため、変数hitを宣言
hit.random                                 # randomメソッドを実行する（10分の1の確率で当たる）


puts 'ありがとうございましたm(_ _)m　おつりは' + yen.oturi.to_s + '円です'      # @a で保持している残金を出力する
puts ''

