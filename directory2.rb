
#student_fixed_list avoids manual input of student data
student_fixed_list = [{:name => "Adam", :age => 32, :cohort => :May},{:name => "Anthony",:age => 24, :cohort => :May},{:name => "Peter",:age => 21, :cohort => :May},
	{:name => "Robin",:age => 60, :cohort => :May},{:name => "Bethsheeba",:age => 32, :cohort => :Feb},{:name => "MarcusAnthony",:age => 27, :cohort => :Feb},
	{:name => "Sarah-Ann",:age => 35, :cohort => :Feb}]

#create a neat program header
def print_header
	puts "The students of my cohort at Makers Academy are:"
	puts "---------"
end


#now time to create our student data by prompting for names using gets
#now includes other student attributes of name, age and cohort
def input_students
	puts "Please enter the first name of the students(s)"
	#create an empty array
	students = []
	#get the first name
	name = gets.chomp
	#while the name is not empty prompt for other info and repeat proccess
	while !name.empty? do
		#prompt for email
		puts "Please enter the age of the students(s)"
		age=gets.chomp
		#prompt for skype_id
		puts "Please enter the cohort of the students(s)"
		cohort=gets.chomp
		# add the student data hash to the array
		students << {name: name, age: age, cohort: cohort}
		puts "Now we have #{students.length} students"
		# get another name from the user
		puts "Please enter the next name of the students(s), or hit enter to finish"		
		name = gets.chomp
	end
	# return the array of students
	students
end

#create a neat program footer
def print_footer(names)
puts "Overall we have #{names.count} students"
end

#standard print just with names and cohort hard coded
def print1(student)
	i=1
		student.each do |element|
		puts "#{i}. #{element[:name]}, #{element[:age]}, (of the #{element[:cohort]} cohort)" 
		i+=1	
end
end

#only print students starting with the inputted character
def print_byfirstletter(student)
	#prompt for the first letter
	puts "Please enter your search letter of choice"
	first_letter = gets.chomp
	puts "Students starting with the letter #{first_letter} are:"
	i=1
		student.each do |element|
		if element[:name].downcase.chars.first == first_letter  then print "#{i}. #{element[:name]}, #{element[:age]}, (of the #{element[:cohort]} cohort)\n" 
		i+=1
		end	
	end
end

#MAIN PROGRAMME using manual student input list with failsafe for typos 
# students = input_students_typofix
# print_header
# print1(student_fixed_list)
# print_footer(student_fixed_list)
# print_byfirstletter(student_fixed_list)

#MAIN PROGRAMME using fixed student list including search by first letter functionality
#students = input_students
print_header
print1(student_fixed_list)
print_footer(student_fixed_list)
print_byfirstletter(student_fixed_list)
