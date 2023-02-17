# frozen_string_literal: true

require_relative '../lib/ruby_intro'

#Test within Ruby intro part 1
describe 'Ruby intro part 1' do
  #Test sum function
  describe '#sum' do
    #If these tests pass, the subject (it) will have points eq 1
    it 'returns correct sum [1 point]', points: 1 do
      #Sum must be an integer
      expect(sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer
      #Sum must equal 15
      expect(sum([1, 2, 3, 4, 5])).to eq(15)
      #Sum must equal 5, in this case
      expect(sum([1, 2, 3, 4, -5])).to eq(5)
      #Sum must equal 90, in this case
      expect(sum([1, 2, 3, 4, -5, 5, -100])).to eq(-90)
    end

    #2 points if it passes with an empty array
    it 'works on the empty array [2 points]', points: 2 do
      #Empty array does not pass an error
      expect { sum([]) }.not_to raise_error
      #Empty array case should return 0
      expect(sum([])).to be_zero
    end
  end

  describe '#max_2_sum' do
    
    it 'returns the correct sum [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 4, 5])).to be_a_kind_of Integer
      expect(max_2_sum([1, -2, -3, -4, -5])).to eq(-1)
    end
    it 'works even if 2 largest values are the same [1 point]', points: 1 do
      expect(max_2_sum([1, 2, 3, 3])).to eq(6)
    end
    it 'returns zero if array is empty [1 point]', points: 1 do
      expect(max_2_sum([])).to be_zero
    end
    it 'returns value of the element if just one element [1 point]', points: 1 do
      expect(max_2_sum([3])).to eq(3)
    end
  end

  describe '#sum_to_n' do

    it 'returns true when any two elements sum to the second argument [2 points]', points: 2 do
      expect(sum_to_n?([1, 2, 3, 4, 5], 5)).to be true # 2 + 3 = 5
      expect(sum_to_n?([3, 0, 5], 5)).to be true # 0 + 5 = 5
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], -3)).to be true  # handles negative sum
      expect(sum_to_n?([-1, -2, 3, 4, 5, -8], 12)).to be false # 3 + 4 + 5 = 12 (not 3 elements)
      expect(sum_to_n?([-1, -2, 3, 4, 6, -8], 12)).to be false # no two elements that sum
    end
    it 'returns false for any single element array [1 point]', points: 1 do
      expect(sum_to_n?([0], 0)).to be false
      expect(sum_to_n?([1], 1)).to be false
      expect(sum_to_n?([-1], -1)).to be false
      expect(sum_to_n?([-3], 0)).to be false
    end
    it 'returns false for an empty array [1 point]', points: 1 do
      expect(sum_to_n?([], 0)).to be false
      expect(sum_to_n?([], 7)).to be false
    end
  end
end
