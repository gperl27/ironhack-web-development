class MultiPaymentEmployee < Employee
	attr_accessor :hours
  include Salary
  include HourlyWage
    def initialize(name, email, annual, overtime_rate, hours)
        super(name, email)
        @annual = annual
        @overtime_rate = overtime_rate
        @hours = hours
    end

    def calculate_salary
      salary = calculate_hourly_wage(@overtime_rate, @hours) + calculate_annual_salary(@annual)
    end
end