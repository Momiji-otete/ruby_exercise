module Baseball
  #スコアを記録するためのFileクラスを定義する
  class File
    #省略
  end
  
  class Second
    def file_with_nesting
      #入れ子ありのクラス定義でFileクラスを参照する
      puts File
    end
  end
end

class Baseball::Second
  def file_without_nesting
    #入れ子なしのクラス定義でFileクラスを参照する
    puts File
  end
end

second = Baseball::Second.new
second.file_with_nesting
second.file_without_nesting
