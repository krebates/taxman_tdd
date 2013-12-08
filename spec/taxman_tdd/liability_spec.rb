#Create a liability_spec.rb file that tests the Liability class.
#Liability must expose three properties: employee, amount_due and amount_owed.
#The employee attribute should be an instance of the Employee class.
#The amount_due represents taxes that must be paid by the employee.
#The amount_owed represents the refund.

require 'rspec'
require 'pry'

require_relative '../../lib/liability.rb'

describe Liability do
  let(:data) {{"annual_income" => 120000.0, "tax_paid" => 28000, "tax_rate" => 38.0}}
  let(:x) { Liability.new(data) }

  it 'represents taxes that must be paid by the employee' do
    expect(x.amount_due).to eql(45600.0)
  end

  it 'represents the refund due' do
    expect(x.amount_owed).to eql(-17600.0)
  end
end

