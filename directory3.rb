#create a neat program header
def print_header
	puts "The students of my cohort at Makers Academy are:"
	puts "---------"
end

#now time to create our student data by prompting for names using gets
#now includes other student attributes of name, age and cohort and corrects cohort for typos using the case operator assuming just Mar or Feb cohorts
def input_students_typofix
	puts "Please enter the first name of the students(s)"
	#create an empty array
	students = []
	#get the first name
	name = gets.chomp
	#while the name is not empty prompt for other info and repeat proccess
	while !name.empty? do
		#prompt for age
		puts "Please enter the age of the students(s)"
		age=gets.chomp

		#prompt for cohort
		puts "Please enter the cohort of the students(s)"
		cohort = gets.chomp

		case cohort.downcase.chars[0]
			when "f" then cohort="Feb"
			when "m" then cohort="Mar"
			else cohort="[-]"
		end
	
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

#alternative to gets.chomp
# def chmop_alternative
# #to remove unwanted line return from gets string 
# name = gets
# name.chars.select {|char| char != name.chars.pop}.join""
# puts name
# end

#MAIN PROGRAMME using manual student input list with failsafe for typos 
students = input_students_typofix
print_header
print1(students)
print_footer(students)
