module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  # logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
  # module_functionは対象メソッドの定義よりも下で呼び出す必要がある
  module_function :log
end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello.')

class Product
  include Loggable
  
  def title
    # includeしたLoggableモジュールのlogメソッドを呼び出す
    log 'title is called.'
    'A great movie'
  end
end

# ミックスインとしてlogメソッドをを呼び出す
product = Product.new
product.title