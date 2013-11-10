require 'spec_helper'

describe Clochard, 'list' do
  it 'should create an empty list' do
    expect(Clochard.list).to eq(Clochard::EmptyList)
  end

  it 'should cons the items to the list' do
    expect(Array(Clochard.list(:foo, :bar, :baz))).to eq([:baz, :bar, :foo])
  end

  it 'should implement reduce with a block' do
    expect(Clochard.list(1,2,3).reduce {|a,b| a+b }).to eq 6
  end

  it 'should implement reduce with a symbol' do
    expect(Clochard.list(1,2,3).reduce(:+)).to eq 6
  end

  it 'should alias reduce to inject' do
    expect(Clochard.list(1,2,3).inject(:+)).to eq 6
  end

end
