# let's allow the user to input students into an array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, jist hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << { name: name, cohort: :november }
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

# defining our other methods
def print_header
  puts "The students of Villians Academy"
  puts "-------------"
end

def print(students)
  students.each do |students|
    puts "#{students[:name]} (#{students[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# printing to the user
students = input_students
print_header
print(students)
print_footer(students)
