#student_count = 4
puts
# lets put students into an array

def input_students
	puts "Please enter the names of the student"
	puts "To finish just hit return twice"
	#create an empty array
	students = []
	#get the first name
	name=gets.chomp
	#while the name is not empty repeat process
	while !name.empty? do
		#add student hash to direc
		students << {:name => name, :cohort => :Mar}
		puts "Now we have #{students.length} students}"
		#next name pls
		name =gets.chomp
	end
	#return array of students
		return students
end

def print_header
	puts "The students of my cohort at Makers are"
	puts "---------"
end

#select letter to search by
def get_search_firstletter
	puts "Please enter your search letter of choice"
	@first_letter = gets.chomp
end	


#def print2(student)
#	count=1
#	student.each do |student|
#		if student[:name].downcase.chars.first == "a"  then print "#{count}. #{student[:name]} (#{student[:cohort]} cohort)\n" 
#	count+=1
#	end	
#end
#end

def print3(student)
	i=0
	while i < student.count 
	puts "#{i+1}. #{student[i][:name]}, #{student[i][:cohort]} cohort"
	i+=1
	end	
end

#def print3(student)
#	count=1
#		
#		while student student.each {|student| while student[:name].chars.length < 12 
#		print "#{count}. #{student[:name]} (#{student[:cohort]} cohort)\n" }
#	count+=1
#	end
#end


def print_footer(names)
puts "Overall we have #{names.count} students"
end

#and calling the methods
students = input_students
#puts students
#students.sort {|student1,student2| student1[0[1]] <=> student2[0[1]]}
#puts students.inspect
#get_search_firstletter
#print_header
#puts students.count
print3(students)
#puts students.length
print_footer(students)