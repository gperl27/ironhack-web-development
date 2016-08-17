class SalariedEmployee < Employee
    def initialize(name, email, annual)
        super(name, email)
        @annual = annual
    end

    def calculate_salary
      @annual/52
    end
end