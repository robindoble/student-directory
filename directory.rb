#student_count = 4
puts
# lets put students into an array
students = [
{:name => "Peter",:cohort => :Mar},
{:name => "Paul", :cohort => :Mar},
{:name => "Simon",:cohort => :Mar},
{:name => "Anthony",:cohort => :Mar},
]

def print_header
	puts "The students of my cohort at Makers"
	puts "---------"
end

def print(student)
	student.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
puts "Overall we have #{names.length} students"
end

#and calling the methods
print_header
print(students)
print_footer(students)
