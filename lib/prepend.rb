# Productクラスは外部ライブラリで定義されている想定で、直接コードを書き換えられないと仮定する
class Product
  def name
    'A great firm'
  end
end

product = Product.new
p product.name

module NameDecorator
  def name
    # prependするとsuperはミックスインした先のクラスのnameメソッドが呼び出される
    "<<#{super}>>"
  end
end

# 既存の実装を変更するためにProductクラスを再オープンする
class Product
  prepend NameDecorator
end
# クラス構文の中でprependを呼ぶ代わりに、↓の形式でもよい
# Product.prepend NameDecorator


# NameDecoratorをprependしたのでnameメソッドは装飾された文字列が返る
product = Product.new
p product.name