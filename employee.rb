employee_1 = ["Bruce", "Wayne", 70000, true]
employee_2 = ["Diana", "Prince", 80000, true]

puts employee_1[0] + " " + employee_2[1] + " makes " + employee_1[2].to_s + " a year."
puts "#{employee_2[1]} #{employee_1[2]} makes #{employee_1[3]} a year" 

array works best when order is unimportant
if you define with a symbol, you must call with a symbol.

employee_1 = {"first_name" => "Bruce", "last_name" => "Wayne", "salary" => 70000, "active" => true}

employee_2 = {"first_name" => "Diana", "last_name" => "Prince", "salary" => 70000, "active" => true}

puts "#{employee_1 ["first_name"]}"

ruby syntax
employee_2 = {:first_name => "Diana", "last_name" => :Prince, :salary => 80000, "active" => true}

# javascript syntax 
employee_2 = {first_name: "Diana", last_name: "Prince", salary: => 70000, active: true}


class Employee # never Camel case

  attr_reader :first_name, :last_name, :salary, :active # has to be before initialize
  attr_writer :active


  def initialize(input_first_name, input_last_name, input_salary, input_active) # every class must have an initialize method
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new("Bruce", "Wayne", 70000, true)
employee_2 = Employee.new("Diana", "Prince", 80000, true)

p employee_1.print_info
p employee_2.print_info
p employee_2.give_annual_raise
p employee_1.salary + 5 # you need to crate a getter method in order to allow + 5
employee_1.active = false
p employee_1.active











































