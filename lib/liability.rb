#Create a liability_spec.rb file that tests the Liability class.


#The amount_due represents taxes that must be paid by the employee.
#The amount_owed represents the refund.

require 'rspec'

class Liability
  attr_reader :annual_income, :tax_paid, :tax_rate


  def initialize(data)
    @annual_income = data.annual_income.to_f
    @tax_paid = data.tax_paid.to_f
    @tax_rate  = data.tax_rate.to_f / 100
  end

  def amount_due
     @tax_rate * @annual_income
  end

  def amount_owed
    (@tax_paid - amount_due).round(2)
  end

end

