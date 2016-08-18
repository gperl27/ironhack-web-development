class SalariedEmployee < Employee
	include Salary
    def initialize(name, email, annual)
        super(name, email)
        @annual = annual
    end

    def calculate_salary
      calculate_annual_salary(@annual)
    end
end