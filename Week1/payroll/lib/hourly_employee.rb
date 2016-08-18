class HourlyEmployee < Employee
	include HourlyWage
    def initialize(name, email, hourly_rate, hours_worked)
        super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      calculate_hourly_wage(@hours_worked, @hourly_rate)
    end
end