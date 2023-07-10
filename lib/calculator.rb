# モジュールの特異メソッドとしてsqrt(平方根)メソッドを利用する
p Math.sqrt(2)

class Calculator
  include Math
  
  def calc_sqrt(n)
    # ミックスインとしてMathモジュールのsqrtメソッドを使う
    sqrt(n)
  end
end

calculator = Calculator.new
p calculator.calc_sqrt(2)

# Mathモジュールには自然対数の底を表すEと円周率を表すPIという定数が定義されている
p Math::E
p Math::PI