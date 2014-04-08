
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
		# puts "Please enter the email of the students(s)"
		# email=gets.chomp
		# #prompt for skype_id
		# puts "Please enter the skype_id of the students(s)"
		# skype_id=gets.chomp
		# # add the student data hash to the array
		students << {name: name, email: "email@gmail.com", skype_id: "skype_id"}
		puts "Now we have #{students.length} students"
		# get another name from the user
		puts "Please enter the next name of the students(s), or hit enter to finish"		
		name = gets.chomp
	end
	# return the array of students
	students
end

	
def print(student)
		i = 0
		student.each do |element|
		puts "#{i += 1}. #{element[:name]}, #{element[:email]}, #{element[:skype_id]}"
		end
end


def print_footer(student)
	puts "Overall, we have #{student.length} great student(s)"
end

def interactive_menu
		students = []
	loop do
		#1. print menu and ask user what to do
			puts "1. Input the students"
			puts "2. Show the students"
			puts "9. Exit"
		#2. read input and assign to a variable
			selection = gets.chomp
		#3. do what user has asked
			case selection
			when "1"
			#input students
			students = input_students
			when "2"
			#show students
			print_header
			print(students)
			print_footer(students)
			when "9"
			exit #will exit the program
			else 
			puts "I don't know what you mean, please try again"
			end
	end
end

2
interactive_menu