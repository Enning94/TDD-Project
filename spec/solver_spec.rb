require_relative 'solver'

describe Solver do
    before(:each) do
        @solver = Solver.new
      end

    context "Factorial for a given integer" do

        it "should return 1 for factorial of 0" do
            expect(@solver.factorial(0)).to eq(1)
        end

        it "should return 1 for factorial of 1" do
            expect(@solver.factorial(1)).to eq(1)
          end

        it "should return the correct factorial for positive integers" do
            expect(@solver.factorial(5)).to eq(120)
            expect(@solver.factorial(10)).to eq(3628800)
          end

          it "should raise an exception for negative integers" do
            expect(@solver.factorial(-1)).to raise_error(ArgumentError, "Factorial is only defined for non-negative integers")
          end
    end
end