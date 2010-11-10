require 'spec_helper'

describe 'Whoru::Friends' do
  it 'should return empty array' do
    
    class Sample
      include Whoru::Api
      include Whoru::Friends
      attr_accessor :screen_name
      def initialize(screen_name)
        @screen_name = screen_name
      end
      
    end
    sample = Sample.new('jackhq')
    
    sample.should_receive(:get).and_return([])
    sample.friends.should == []
  end
  
end
