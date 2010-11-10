require 'spec_helper'

describe 'Whoru::Algorithm' do
  it 'should return an array of categories for a given screen name' do
    a = Whoru::Algorithm.new('jackhq')
    puts a.categories.inspect
  end
  
  
end
