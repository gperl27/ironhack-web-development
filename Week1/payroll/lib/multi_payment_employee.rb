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