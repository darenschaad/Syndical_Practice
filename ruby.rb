=begin
  print "Enter a value: "

first_num = gets.to_i

print "Enter another value: "

second_num = gets.to_i

puts first_num.to_s + " + " + second_num.to_s + " = " + (first_num + second_num).to_s

=end

=begin
CONDITIONALS

puts (10 <=> 15).to_s

age = 12

#returns old if true and young if false
puts (age >= 50) ? "old" : "young"

if age >6
  puts "old"
else
  puts "young"
end

puts "ruby is weird" if age < 30

=end
=begin
print "Enter Language: "

greeting = gets.chomp

case greeting
when "French" , "french"
  puts "Bonjure"
  exit
when "Spanish", "spanish"
  puts "Hola"
  exit
else "english" || "English"
  puts "Hello"
end
=end

=begin
loops

x = -1

loop do

  x += 1

  next unless (x % 2) == 0
  puts x.to_s

  break if x >= 11
end

y = 0

while y <=10

  if (y %2) == 0
  puts y
  end
  y += 1
  next
end



a = 0

until a >= 10
  if (a % 2) == 0
    puts a
  end
  a += 1
  next

end
=end

=begin
MORE LOOPS
numbers = [1,2,3,4,5]

for number in numbers
  puts "#{number} , "
  # or to get the same thing
  puts number.to_s + " , "
end

groceries = ["bananas", "bread", "milk", "letttuce"]

groceries.each do |food|
puts "Get some #{food}"
end

(0..7).each do |i|
  puts "# #{i}"
end
=end

=begin
FUNCTIONS

def add_nums(num1, num2)
  return (num1.to_i + num2)
end

puts add_nums(3.75, 4.5)
=end

=begin
EXCEPTIONS

print "Enter a number to be divided "
num1 = gets.to_f
print "Enter a number to divde the first number by "
num2 = gets.to_f

begin
  answer = num1/num2
rescue
  puts "You can't divide a number by 0"
  exit
end

puts "#{num1} divided by #{num2} = #{answer}"


def check_age(age)
  raise ArgumentError, "Enter a positive number" unless age >0
end

begin
  check_age(4)
rescue ArgumentError
  puts "That is not a valid age"
end
=end

# Strings are a series of characters between " or '
# String interpolation doesn't work with '' and neither do backslash
# characters like newline

puts "Add Them #{4 + 5} \n\n"
puts 'Add Them #{4 + 5} \n\n'

# A here-doc is normally used when you want a multiline string

multiline_string = <<EOM
This is a very long string
that contains interpolation
like #{4 + 5} \n\n
EOM

puts multiline_string

# ---------------------------------------

# Find all string methods by typing irb in terminal and "string".methods

first_name = "Daren"

last_name = "Schaad"

# You can combine or concatenate strings with +

full_name = first_name + " " + last_name

middle_name = "Loyd"

# Combining strings with interpolation

full_name = "#{first_name} #{middle_name} #{last_name}"
puts full_name

# You can check if a string contains a string with include

puts full_name.include?("Da")

# Get the length of a string

puts full_name.size

# Count the number of vowels

puts "Vowels : " + full_name.count("aeiou").to_s

# Count the consonants

puts "Consonants : " + full_name.count("^aeiou").to_s

# You can check if a string starts with another string

puts full_name.start_with?("Banas")

# Return the index for the match

puts "Index : " + full_name.index("Banas").to_s

# Check equality of strings

puts "a == a : " + ("a" == "a").to_s

# Check if they are the same object

puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s
puts first_name.equal?first_name

# Changing Case

puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

# Stripping white space

full_name = "       " + full_name

full_name = full_name.lstrip
full_name = full_name.rstrip
full_name = full_name.strip

puts full_name

# Formatting Strings

puts full_name.rjust(20, '.')
puts full_name.ljust(20, '.')
puts full_name.center(20, '.')

# Chop eliminates the last character

puts full_name.chop

# Chomp eliminates \n or a specific string

puts full_name.chomp
puts full_name.chomp('ad')

# Delete deletes provided characters

puts full_name.delete("a")

# Split a string into an array

name_array = full_name.split(//)
puts name_array

name_array = full_name.split(/ /)
puts name_array

# String Conversions

puts "a".to_i
puts "2".to_f
puts "2".to_sym

# Escape sequences
# \\  Backslash
# \'  Single-quote
# \"  Double-quote
# \a  Bell
# \b  Backspace
# \f  Formfeed
# \n  Newline
# \r  Carriage
# \t  Tab
# \v  Vertical tab
