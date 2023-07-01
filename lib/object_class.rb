class User
end

user = User.new
# p user.to_s
# p user.nil?
# p User.superclass
# p user.methods.sort

p user.class
p "userはUserクラスのいんすたんすか"
p user.instance_of?(User)
p "userはStringクラスのインスタンスか？"
p user.instance_of?(String)