require_relative 'taxman_tdd.rb'
require_relative 'liability.rb'
require_relative 'tax_calc.rb'
require 'pry'

class Runner

  def initialize

  end

  def run
    Employee.load_employee_data('tax_data.csv')

    Employee.employee_list.each do |x|
      #binding.pry
      liability = Liability.new(x)
      if liability.amount_owed < 0
        puts "#{x.first_name} #{x.last_name} has a tax liability of $#{(liability.amount_owed).abs}"
      else
        puts "#{x.first_name} #{x.last_name} will recieve a refund of $#{liability.amount_owed}"
      end
    end
  end

end
x = Runner.new
x.run
