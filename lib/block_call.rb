# ブロックをメソッドの引数として受け取る
def greet(&block)
  puts 'おはよう'
  # ブロックがわたされていなければblockはnil
  unless block.nil?
    # callメソッドを使ってブロックを実行する
    text = block.call('こんにちは')
    puts text
  end
  
  # 引数のブロックを使わずにblock_given?やyieldを使うこともできる
  # if block_given?
  #   text = yield 'こんにちは'
  #   puts text
  # end
  
  puts 'こんばんは'
end

# ブロックなしで呼び出す
greet


# ブロック付きで呼び出す
greet do |text|
  text * 2
end