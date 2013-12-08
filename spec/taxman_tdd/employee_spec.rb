#tests an Employee class to represent each employee in your dataset.
#Your tests must verify that you can instantiate your class when all
#expected data is present as well as handle the cases where some are missing.

require 'rspec'
require 'pry'
require 'csv'


require_relative '../../lib/taxman_tdd' #going back out

describe Employee do
  #name of class
  #first_name,last_name,annual_income,tax_paid,tax_rate

  let(:data) { {"first_name" => "Johnny","last_name" => "Smith","annual_income" => "120000","tax_paid" => "28000","tax_rate" => "38"}}
  let(:employee) { Employee.new(data) }

  it 'creates an employee with all data provided' do
    expect(employee.first_name).to eql(data["first_name"])
  end

  it 'creates an employee with placeholder first name if not provided' do
    data.delete("first_name")
    data.delete("last_name")
    expect(employee.first_name).to eql("[First Name]")
    expect(employee.last_name).to eql("[Last Name]")
  end

  it 'loads data from csv' do
    Employee.load_employee_data('tax_data_fixture.csv')
    first_employee = Employee.employee_list.first
    expect(first_employee.first_name).to eql("Johnny")
    expect(first_employee).to be_instance_of(Employee)
  end

  # let(:emp) {Employee.new} #emp reps employee.new


  # it 'should return Employee info when all data is present' do
  #   expect(Employee.new.employee_info).to include("Johnny Smith"=>['120000','28000','38'])
  # end

  # it 'should fill missing data slots' do
  #   expect(Employee.new.emplo)
end


  # (first_name, last_name, annual_income, )
# end
