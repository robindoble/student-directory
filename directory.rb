#student_count = 4
puts
# lets put students into an array
students = [
"Peter",
"Paul",
"Simon",
"Anthony"
]
#and then print them
puts "The students in my cohort at makers are:"
puts "----------"

students.each do |student|
	puts student
	end

#adding a total
puts "\nOverall we have #{students.length} students\n"