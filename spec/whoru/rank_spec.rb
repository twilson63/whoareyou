require 'spec_helper'

describe 'Whoru::Rank' do
  it 'should return empty array' do
    
    class SampleRank
      include Whoru::Api
      include Whoru::Rank
      
    end
    sample = SampleRank.new
    
    sample.should_receive(:get).and_return({'trstrank' => 1})
    sample.rank([{'user_id' => '123456'}]).should == [{'trstrank' => 1}]
  end
  
end
