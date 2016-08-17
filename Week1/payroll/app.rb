require_relative("lib/employee.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/salaried_employee.rb")
require_relative("lib/multi_payment_employee.rb")
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
steve = HourlyEmployee.new("Steve", "steve@gmail.com", 15, 40)
greg = HourlyEmployee.new("Greg", "greg@gmail.com", 15, 40)

employees = [josh, nizar, ted, steve, greg]

payroll = Payroll.new(employees)
payroll.pay_employees