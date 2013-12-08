#tax_calculator_spec.rb file that tests a TaxCalculator class who's purpose
#is to determine taxes owed or refunds due. TaxCalculator must implement a
#liability class method that receives an instance of an Employee class in order
#to calculate taxes owed or refund due. The method must return an instance of the Liability class.

require 'rspec'
require 'csv'

require_relative '../../lib/tax_calc'

describe TaxCalculator do
  let(:data) {{"annual_income" => 120000.0, "tax_paid" => 28000, "tax_rate" => 38.0}}
  let(:x) { TaxCalculator.new(data) }

  it 'should return the taxes owed' do
    expect(x.calculate_tax_owed).to eql(45600.0) #no space after expect
  end

  it 'should return false if a refund is not owed' do
    expect(x.refund?).to eql(false) #no space after expect
  end
end
