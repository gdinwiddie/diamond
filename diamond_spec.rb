require 'rspec'
require_relative './diamond'

describe "setup" do
  it "can call rspec" do
    expect(2).to eql(2)
  end
end

describe Diamond do
  describe '.create(A)' do
    subject { Diamond.create('A') }

    it "has a trivial representation" do
      expect(subject.representation).to eql "A\n"
    end
  end
  
  describe '.create(B)' do
    subject { Diamond.create('B') }

    it "has three lines in the representation" do
      expect(subject.representation.lines.count).to eql 3
    end
  end
end
