class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      @hours_worked * @hourly_rate
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, annual)
        super(name, email)
        @annual = annual
    end

    def calculate_salary
      @annual/52
    end
end

class MultiPaymentEmployee < SalariedEmployee
	attr_accessor :hours
    def initialize(name, email, annual, overtime_rate, hours)
        super(name, email, annual)
        @overtime_rate = overtime_rate
        @hours = hours
    end

    def calculate_salary
      pay = @annual/52
      if @hours > 40
      	(@hours-40) * @overtime_rate + pay
      else pay
      end
    end
end

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

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
steve = HourlyEmployee.new("Steve", "steve@gmail.com", 15, 40)
greg = HourlyEmployee.new("Greg", "greg@gmail.com", 15, 40)

employees = [josh, nizar, ted, steve, greg]

payroll = Payroll.new(employees)
payroll.pay_employees
