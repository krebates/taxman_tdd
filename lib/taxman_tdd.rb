require 'csv'
require 'pry'

class Employee
  @@employee_list = []
  attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate, :employee_list

  def initialize(data)
    @full_names = {}
    @first_name = data["first_name"] || "[First Name]"
    @last_name  = data["last_name"] || "[Last Name]"
    @annual_income = data["annual_income"].to_f || 0
    @tax_paid =  data["tax_paid"].to_f || 0
    @tax_rate  = data["tax_rate"]|| 0
  end


  def self.load_employee_data(filepath)
    CSV.foreach(filepath, headers: true) do |row|
      @@employee_list << Employee.new(row.to_hash)
    end
  end

  def self.employee_list
    @@employee_list
  end

end
