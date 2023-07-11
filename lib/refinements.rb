module StringShuffle
  # refinementsが目的なので、refineメソッドを使う
  refine String do 
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  # refinementsを有効にする
  using StringShuffle
  
  def initialize(name)
    @name = name
  end
  
  def shuffled_name
    # Userクラスの内部であればStingクラスのshuffleメソッドが有効になる
    @name.shuffle
  end
  # Userクラスを抜けるとrefinementsは無効になる
end

user = User.new('Alice')
p user.shuffled_name
