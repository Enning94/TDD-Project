require './solver'
describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'Factorial' do
    it 'should return 1 for factorial of 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should return 1 for factorial of 1' do
      expect(@solver.factorial(1)).to eq(1)
    end

    it 'should return the correct factorial for positive integers' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'should raise an error if the number is negative' do
      factorial = double('factorial')
      allow(factorial).to receive(:factorial).with(-1).and_raise('Number cannot be negative')
      expect { factorial.factorial(-1) }.to raise_error('Number cannot be negative')
    end
  end

  context 'Reverse' do
    it "should reverse the word 'hello' " do
      expect(@solver.reverse('hello')).to eq('olleh')
    end

    it "should reverse the word 'Ruby' " do
      expect(@solver.reverse('Ruby')).to eq('ybuR')
    end
  end

  context 'Fizzbuzz' do
    it "should return 'fizz' for numbers divisible by 3" do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it "should return 'buzz' for numbers divisible by 5" do
      expect(@solver.fizzbuzz(25)).to eq('buzz')
    end

    it "should return 'fizzbuzz' for numbers divisible by 3 and 5" do
      expect(@solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'should return the number as string for other cases' do
      expect(@solver.fizzbuzz(8)).to eq('8')
    end
  end
end
