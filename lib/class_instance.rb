class Product
  # クラスインスタンス変数
  @name = 'Product'
  
  def self.name
    # クラスインスタンス変数
    @name
  end
  
  def initialize(name)
    # インスタンス変数
    @name = name
  end
  
  def name
    # インスタンス変数
    @name
  end
end

p Product.name

product = Product.new('A great movie')
p product.name