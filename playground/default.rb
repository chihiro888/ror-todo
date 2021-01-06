# variable and operate
num1 = 10
num2 = 20
result = num1 + num2

# print string
puts "result is #{result}"

# if else condition
if result > 10
    puts "result > 10"
else
    puts "else condition"
end

# loop
# start <= n <= end
for n in 1..5
    puts "#{n}"
end

# array (list)
arr = [1, 2, 3]
for n in arr
    puts "#{n}"
end

# hash (dict)
hash = Hash[
    "a" => 100, 
    "b" => 200
]
puts "#{hash['a']}"
puts "#{hash['b']}"

# block
def helloworld
    puts "hello world"
end
helloworld()

def add(num1, num2)
    puts "sum is #{num1 + num2}"
end
add(5,8)