require 'pry'
require_relative 'taxman_tdd.rb'


class TaxCalculator
  attr_reader :annual_income, :tax_paid, :tax_rate

  def initialize(data)
    @annual_income = data["annual_income"]
    @tax_paid = data["tax_paid"]
    @tax_rate  = data["tax_rate"] / 100
  end

  def calculate_tax_owed
    @tax_rate * @annual_income
  end

  def refund?
    calculate_tax_owed < @tax_paid
  end
end
