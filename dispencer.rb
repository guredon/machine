# -*- coding: utf-8 -*-

class Jihanki


 ## initialize：初期化 ##

  def initialize                          
    insert                                # 始めにinsertメソッドに飛ぶ
  end


 ## insert：お金を入れる ##

  def insert                              
    puts''                                               # puts'' は改行
    puts'¥100で飲み物が買えるので、お金を入れて下さい'
    puts'¥10 ¥50 ¥100 ¥500 が使えます'

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
      
         if @s < 100                                   # 合計金額が100円未満の場合は、追加で入力させる
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
    oturi                                 # oturiメソッドに飛ぶ
  end


 ## oturi：おつりの計算 ##

  def oturi
   @s = @s - 100                          # 飲み物を買ったので、合計金額から100円を引く 
   selection                              # selectionメソッドに飛ぶ
  end


 ## selection：飲み物を入力する ##

  def selection
    puts'飲み物を入力して下さい'
    @b = gets.chomp                       # @b は、飲み物の名前を保持する、インスタンス変数
                                          # getsは、getstringの略。従って、to_sの必要はない
    juice                                 # juiceメソッドへ飛ぶ 


   ## 当たりくじ ##

    @c = (rand(10))                       # @c は、rand関数で出た数字を保持する、インスタンス変数

    if @c == 7                            # もし、@c の数字が７の場合、もう１本もらえる

      puts'当たりました！ ｷﾀ━━━━ (ﾟ∀ ﾟ)━━━━ !! もう１本入力して下さい'
      @b = gets.chomp                     
      juice                               # juiceメソッドへ飛ぶ 
    
    end

    puts 'ありがとうございましたm(_ _)m　おつりは' + @s.to_s + '円です'      # @s で保持している残金を出力する
    puts ''
  end


 ## juice：入力した飲み物を出力する ##

  def juice
    puts 'どうぞ！ (・へ・)つ ' + @b + 'です'
    puts''
  end

end



# ツッコミ：この場合だと、お金払わなくても買えちゃうよね、と。
# お金を入れないと買うことが出来ない訳じゃないので、自販機にズルができてしまう。
# なので、お金を入れないと買うことができないようにする、とか。
# 
#
# いきなり
#  puts "{Jihanki.new.selection} です"
# とかできちゃう。
#
#
# ツッコミ：飲み物を買ったあとにAtariを実行しないとあたりが出て来てくれない。
# どうせならば、買うメソッドと当たりを出すメソッドを呼び出す一つのメソッドにまとめると、呼び出し忘れがないよね、と。
# さらに言えば、それをクラスの中に入れると「当たり」とか意識せずに買うことができそうじゃない？とか。
# 自販機で買う時に当たりの処理とか意識しないんじゃないかなー、とか思った。
#
# あと、どうぞ、〜です的な処理は二つかかれてるから一つに出来ないかな、とか検討できるはず
#
# 飲みもの選択
# アウトプットするときだけ、別メソッドを作る
#
#       exit


#### 処理 #####

#yen = Jihanki.new
#yen.oturi
#yen.selection

#juice = Nomimono.new
#puts juice.selection


Jihanki.new


