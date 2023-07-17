def judge(age)
  adult = Proc.new { |n| n > 20 }
  child = Proc.new { |n| n < 20 }
  
  case age
  when adult
    '大人です'
  when child
    '子どもです'
  else
    'はたちです'
  end
end

puts judge(25)
p judge(18)
pp judge(20)