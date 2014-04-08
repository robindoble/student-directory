
#student_fixed_list avoids manual input of student data
student_fixed_list = [{:name => "Adam",:cohort => :May},{:name => "Anthony",:cohort => :May},{:name => "Peter",:cohort => :May},
	{:name => "Robin",:cohort => :May},{:name => "Bethsheeba",:cohort => :Feb},{:name => "MarcusAnthony",:cohort => :Feb},
	{:name => "Sarah-Ann",:cohort => :Feb}]

#create a neat program header
def print_header
	puts "The students of my cohort at Makers Academy are:"
	puts "---------"
end

#now time to create our student data by prompting for names using gets
def input_students
	puts "Please enter the names of each student(s)"
	puts "To finish just hit return twice"
	#create an empty array
	students = []
	#get the first name
	name=gets.chomp
	#while the name is not empty repeat process
	while !name.empty? do
		#add student hash to the array (note cohort fixed at Mar)
		students << {:name => name, :cohort => :Mar}
		puts "Now we have #{students.length} student(s)}"
		#prompt for the next name
		name = gets.chomp
	end
	#set return val to the students array
	return students
end

#create a neat program footer
def print_footer(names)
puts "Overall we have #{names.count} students"
end

#standard print just with names and cohort hard coded
def print1(student)
	i=1
		student.each do |student|
		puts "#{i}. #{student[:name]}, of the #{student[:cohort]} Cohort" 
		i+=1	
end
end

#only print student starting with the inputted character
def print_bysearchletter(student)
	puts "Please enter your search letter of choice"
	first_letter = gets.chomp
	i=1
		student.each do |student|
		if student[:name].downcase.chars.first == first_letter  then print "#{count}. #{student[:name]} (#{student[:cohort]} cohort)\n" 
		i+=1
		end	
	end
end

#select letter to search by
# def get_search_firstletter

# end	

#alternative to gets.chomp
# def chmop_alternative
# #to remove unwanted line return from gets string 
# name = gets
# name.chars.select {|char| char != name.chars.pop}.join""
# puts name
# end

#def print3(student)
#	count=1
#		
#		while student student.each {|student| while student[:name].chars.length < 12 
#		print "#{count}. #{student[:name]} (#{student[:cohort]} cohort)\n" }
#	count+=1
#	end
#end




# #and calling the methods
# #puts students
# #students.sort {|student1,student2| student1[0[1]] <=> student2[0[1]]}
# #puts students.inspect
# #get_search_firstletter
# #puts students.count
# #puts students.length
#chmop_alternative


# def print1(student)
# 	i=0
# 	while i < student.count 
# 	puts "#{i+1}. #{student[i][:name]}, #{student[i][:cohort]} cohort"
# 	i+=1
# 	end	
# end


students = input_students
print_header
print1(students)
print_footer(students)

# puts students.inspect
