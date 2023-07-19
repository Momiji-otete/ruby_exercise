# 7777777までの数字の7倍数のうち、"7"が何回含まれるか、含まれた回数の合計を出力するプログラム
def num(create_num)
  num_list = []
  for i in 1.upto(create_num) do
    if(i % 7 == 0)
      num_list.push(i)
    end
  end
  return num_list.sum { |i| i.to_s.count("7")}
end

puts num(7777777)