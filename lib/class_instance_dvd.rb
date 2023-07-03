require_relative 'class_instance_product.rb'

class DVD < Product
  @name = 'DVD'
  
  def self.name
    # クラスインスタンス変数を参照
    @name
  end
  
  def upcase_name
    # インスタンス変数を参照
    @name.upcase
  end
end

p Product.name
p DVD.name

product = Product.new('A great movie')
p product.name

dvd = DVD.new('An awesome film')
p dvd.name
p dvd.upcase_name