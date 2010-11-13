require 'spec_helper'

describe 'Whoareyou::Algorithm' do
  it 'should return an array of categories for a given screen name' do
    a = Whoareyou::Algorithm.new('jackhq')
    puts a.categories.inspect
  end
  
  
end
