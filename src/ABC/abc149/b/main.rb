a, b, k = gets.split.map(&:to_i)
eat = [a, k].min
a -= eat
k -= eat

eat = [b, k].min
b -= eat
k -= eat

print a,' ', b
