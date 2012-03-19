# -*- coding: utf-8 -*-


class Okane                               ## お金を入れるclass ##

  def insert                              
    @a = gets.chomp.to_i                  # @a は、入れたお金を保持する、インスタンス変数
                                          # chompで、Enterを除くようにする
                                          # to_iで、整数として扱う

    @s = 0                                # @s は、お金の合計金額を保持する、インスタンス変数
    puts''

    coin = [10,50,100,500]                # 配列coin（入力するのは ¥10,¥50,¥100,¥500 のみ）

    while @s < 100 

     if  coin.include? @a                 ## 入力したお金が、配列coinの中に含まれているか検索する

         @s = @s.to_i + @a.to_i           ## 含まれている（お金が正しく入力されている）場合は、
                                           # 入力したお金を、合計金額に加算する
      
         if @s < 100                       # 合計金額が100円未満の場合は、追加で入力させる

           puts'現在' + @s.to_s + '円入っています'     # to_sで、文字列として扱う
           puts'もっと入れて下さい (´ω `)' 
           @a = gets.chomp.to_i
           puts''
       
         end
     
     else                                 ## 含まれていない（お金が正しく入力されていない）場合は、再度入力させる

      puts "使えるのは、¥10 ¥50 ¥100 ¥500 です m9(^Д ^)"
      puts "再度入れて下さい"
      @a = gets.chomp.to_i
      puts''

     end

    end
  end

  def oturi
   @s = @s - 100                          # 飲み物を買ったので、合計金額から100円を引く 
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
      @b = gets.chomp                     # getsは、getstringの略。従って、to_sの必要はない
      puts 'どうぞ！ (・へ・)つ ' + @b + 'です'
      puts''
    
    end
  end

end


# ツッコミ：この場合だと、お金払わなくても買えちゃうよね、と。
# お金を入れないと買うことが出来ない訳じゃないので、自販機にズルができてしまう。
# なので、お金を入れないと買うことができないようにする、とか。
# 
#
# いきなり
                              # puts "#{Nomimono.new.selection} です"
# とかできちゃう。
#
#
# ツッコミ：飲み物を買ったあとにAtariを実行しないとあたりが出て来てくれない。
# どうせならば、買うメソッドと当たりを出すメソッドを呼び出す一つのメソッドにまとめると、呼び出し忘れがないよね、と。
# さらに言えば、それをクラスの中に入れると「当たり」とか意識せずに買うことができそうじゃない？とか。
# 自販機で買う時に当たりの処理とか意識しないんじゃないかなー、とか思った。
#
# あと、どうぞ、〜です的な処理は二つかかれてるから一つに出来ないかな、とか検討できるはず

                                #exit
#### 処理 #####

puts''                                     # puts'' は改行
puts'¥100で飲み物が買えるので、お金を入れて下さい'
puts'¥10 ¥50 ¥100 ¥500 が使えます'

yen = Okane.new                            # Okaneクラスを使うため、変数yenを宣言 
yen.insert                                 # insertメソッドを実行する（お金を入力してもらう）

puts'飲み物を入力して下さい'

drink = Nomimono.new                       # Nomimonoクラスを使うため、変数drinkを宣言 

puts 'どうぞ！ (・へ・)つ ' + drink.selection + 'です'                          # @b で保持している飲料名を出力する
puts''

hit = Atari.new                            # Atariクラスを使うため、変数hitを宣言
hit.random                                 # randomメソッドを実行する（10分の1の確率で当たる）


puts 'ありがとうございましたm(_ _)m　おつりは' + yen.oturi.to_s + '円です'      # @s で保持している残金を出力する
puts ''

