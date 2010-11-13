require 'spec_helper'

describe 'Whoareyou::Category' do
  it 'should return empty array' do
    
    class SampleCategory
      include Whoareyou::Api
      include Whoareyou::Category
      
    end
    sample = SampleCategory.new
    
    sample.should_receive(:get).and_return({'category' => 'unknown'})
    sample.category('Hello World').should == 'unknown'
  end
  
end
