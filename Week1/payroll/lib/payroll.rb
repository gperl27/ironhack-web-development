class Payroll
	def initialize(employees)
	    @employees = employees
	end

	def notify_employee(employee)
		puts "To: #{employee.email}:"
		puts "You've been paid!"
		puts ""
	end

	def pay_employees
		# Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
		@employees.each { |employee|
			pay = employee.calculate_salary * 0.72
			puts "#{employee.name} => #{pay}"
			notify_employee(employee)
		}
	end
end
