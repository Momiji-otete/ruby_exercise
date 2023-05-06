numbers = [1, 2, 3, 4, 5, 6]

even_numbers = numbers.select{ |n| n.even? }
puts even_numbers

#&とシンボルｗ使って簡潔に書く方法
puts "以下省略形で書いたパターン"
even_numbers = numbers.select(&:even?)
puts even_numbers
#以下３つの条件を満たすときのみ、&:メソッドという引数を渡して省略できる
#１．ブロックパラメータが1つだけ => |n|のみ
#２．ブロック内で呼び出すメソッドに引数がない => n.even? に引数なし
#３．ブロック内でブロックパラメータに対してメソッドを1回呼び出す以外の処理がない
# => 処理は|n| n.even? のみ