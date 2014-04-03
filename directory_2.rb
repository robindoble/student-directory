
def student_header
	puts "The May cohort has some really cool students"
	puts "--------------"
end

student_list_fixed = [{:name => "Adam",:cohort => :May},{:name => "Anthony",:cohort => :May},{:name => "Peter",:cohort => :May},
	{:name => "Robin",:cohort => :May},{:name => "Bethsheeba",:cohort => :May},{:name => "MarcusAnthony",:cohort => :May}]


# def student_list
# 	students=[]
# 	puts "Please enter next name"
# 	name = gets.chomp
# 	while !name.empty? do
# 		students << {:name => name, :cohort => :March}
# 		puts "There are now #{students.count} students"
# 		name = gets.chomp
# 	end
# 	return students
# end

# def print_student_list(list)
# 	list.each_with_index {|student,index| puts "#{index+1}. #{student[:name], from student[:cohort] cohort}"}
# end

# def printstudentlist(list)
# 	list.each_with_index {|student,index| puts "#{index+1}. #{student[:name], from student[:cohort] cohort}"}
# end

#student_header
# students = student_list
# puts students 

puts student_list_fixed
# print_student_list(students)