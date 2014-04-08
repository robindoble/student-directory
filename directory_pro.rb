
#student_fixed_list avoids manual input of student data
student_fixed_list = [{:name => "Adam",:cohort => :May},{:name => "Anthony",:cohort => :May},{:name => "Peter",:cohort => :May},
	{:name => "Robin",:cohort => :May},{:name => "Bethsheeba",:cohort => :Feb},{:name => "MarcusAnthony",:cohort => :Feb},
	{:name => "Sarah-Ann",:cohort => :Feb}]

#create a neat program header
def print_header
	puts "The students of my cohort at Maker's Academy"
	puts "-----------"
end

#now time to create our student data by prompting for names using gets
#now includes other student attributes of name, email and skype id
def input_students
	puts "Please enter the first name of the students(s)"
	#create an empty array
	students = []
	#get the first name
	name = gets.chomp
	#while the name is not empty prompt for other info and repeat proccess
	while !name.empty? do
		#prompt for email
		puts "Please enter the email of the students(s)"
		email=gets.chomp
		#prompt for skype_id
		puts "Please enter the skype_id of the students(s)"
		skype_id=gets.chomp
		# add the student data hash to the array
		students << {name: name, email: email, skype_id: skype_id}
		puts "Now we have #{students.length} students"
		# get another name from the user
		puts "Please enter the next name of the students(s), or hit enter to finish"		
		name = gets.chomp
	end
	# return the array of students
	students
end

# def print_list(people)
# 	i = 0
# 	while (i < people.length)
# 		puts "#{i + 1}. #{people[i][:name]} (#{people[i][:cohort]} cohort)"
# 		i += 1
# 		end
# end
	
def print1(student)
	i = 0
		student.each do |element|
		puts "#{i += 1}. #{element[:name]}, #{element[:email]}, #{element[:skype_id]}"
		end
end

# if person[:name].chars.first == "A"
		# if person[:name].length < 12
		

# below is an alternative method using with_index to number each student
# def print_list(people)
# 	people.each_with_index do |person, index|
# 		puts "#{index+1}. #{person[:name]} (#{person[:cohort]} cohort)"
# 	end
# end

def print_footer(student)
	puts "Overall, we have #{student.length} great students"
end

# nothing happens until we call the methods:
students = input_students
print_header
print1(students)
print_footer(students)
