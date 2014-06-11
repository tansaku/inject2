require 'inject'

# a) reopen the Array class or b) subclass it.
# Rewrite the inject method. Write a test 
# for it first. 

# Don't worry about returning an 
# enumerator, assume a block is always given
# Name your method differently (that is, not 
# inject() or subclass Array) because rspec 
# uses inject() internally, so the tests will 
# fail with weird messages unless your 
# implementation of inject is perfect

describe 'inject' do

  let(:a){[1,2,3,4]}

  context 'testing existing inject' do
  
    it 'with addition' do
      expect(a.inject(0) { |memo,y| memo + y}).to eq 10
    end

    it 'with multiplication' do
      expect(a.inject(1) { |memo,y| memo * y}).to eq 24
    end
  end

  context 'testing new inject' do

    it 'with memo' do
      expect(a.cool_inject(0) { |memo,item| memo + item}).to eq 10
    end

    it 'with different memo' do
      expect(a.cool_inject(1) { |memo,item| memo + item}).to eq 11
    end

    it 'with string array' do
      b = %w{a b c d} 
      expect(b.cool_inject('') { |memo,item| memo + item}).to eq 'abcd'
    end

    it 'with multiplication' do
      expect(a.cool_inject(1) { |memo,item| memo * item}).to eq 24
    end

  end
end