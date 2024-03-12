require "csv" 

puts "------------------------------"
puts "あっち向いてホイゲームを始めます。"

def janken
  puts "じゃんけん・・・" 
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  select_number = gets.to_i
  if !(select_number == 0 || select_number == 1 || select_number == 2)
    select_number = 3
  end   

  random_number = rand(3)
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "あなた：#{jankens[select_number]} 相手：#{jankens[random_number]}"
  puts "------------------------------"

  if select_number == 3 || random_number == 3
    puts "じゃんけんが放棄されました。ゲームを終了します。"
    return 3
  else
    case (select_number - random_number)
    when 0
      puts "あいこです。もう一度じゃんけんをします。"
      return janken
    when 1, -2
      puts "じゃんけんに負けました。あっちむいて・・・"
      return 2
    when -1, 2
      puts "じゃんけんに勝ちました。あっちむいて・・・"
      return 1
    end
  end
end

result = janken

if result == 3
  return
end

puts "0(上) 1(下) 2(左) 3(右)"
select_number2 = gets.to_i
random_number2 = rand(4) # 0から3までの乱数を生成
directions = ["上", "下", "左", "右"]
puts "あなた：#{directions[select_number2]} 相手：#{directions[random_number2]}"
puts "------------------------------"

if select_number2 == random_number2
  puts "あなたの勝ちです！おめでとう"
else
  puts "あなたの負けです・・・残念"
end

