# 以下のUserクラスは外部ライブラリで定義されている想定
class User
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hello, #{@name}!"
  end
end

# モンキーパッチをあてる前の挙動の確認
user = User.new('Alice')
p user.hello

# helloメソッドにモンキーパッチをあてて独自の挙動を持たせる
class User
  def hello
    "#{@name}さん、こんにちは！"
  end
end

# メソッドの定義を上書きしたのでhelloメソッドの挙動が変化
p user.hello