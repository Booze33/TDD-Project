require_relative 'solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 when input is 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the factorial of a positive integer' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end
  end

  describe '#reverse' do
    it 'returns the reverse of a word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizzbuzz" when input is divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns "fizz" when input is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end
  end
end
