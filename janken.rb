def janken
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
  player_hand = gets.to_i
  program_hand = rand(3)  
    
  if player_hand > 3
    puts "入力された値は無効です"
    return true
  elsif player_hand == 3
    puts "じゃんけんを終了します"
    return false
  end

  jankens = ["グー", "チョキ", "パー"]

  puts "ホイ！"
  puts "----------"
  
  if player_hand == program_hand
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "あいこです"
    puts "----------"
    return true
    
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0) 
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "じゃんけん：あなたの勝ちです"
    puts "----------"
    
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    
    player_hoi = gets.to_i
    program_hoi = rand(4)
    hois = ["上", "下", "左", "右"]
    
    puts "ホイ！"
    puts "----------"
    
    if player_hoi == program_hoi
      puts "あなたの手:#{hois[player_hoi]}"
      puts "相手の手:#{hois[program_hoi]}"
      puts "あっち向いてホイ:あなたの勝ちです"
      puts "----------"
      return false
    else
      puts "あなたの手:#{hois[player_hoi]}"
      puts "相手の手:#{hois[program_hoi]}"
      puts "じゃんけんに戻ります"
      puts "----------"
      return true
    end
  
  elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "相手:#{jankens[program_hand]}を出しました"
    puts "じゃんけん：あなたの負けです"
    puts "----------"
    
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    
    player_hoi = gets.to_i
    program_hoi = rand(4)
    hois = ["上", "下", "左", "右"]
    
    puts "ホイ！"
    puts "----------"
    
    if player_hoi == program_hoi
      puts "あなたの手:#{hois[player_hoi]}"
      puts "相手の手:#{hois[program_hoi]}"
      puts "あっち向いてホイ：あなたの負けです"
      puts "----------"
      return false
    else
      puts "あなたの手:#{hois[player_hoi]}"
      puts "相手の手:#{hois[program_hoi]}"
      puts "じゃんけんに戻ります"
      puts "----------"
      return true
    end
  end
end

next_game = true
 while next_game 
   next_game = janken
 end

