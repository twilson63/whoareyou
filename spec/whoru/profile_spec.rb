require 'spec_helper'

describe 'Whoru::Profile' do
  it 'should return empty array' do
    
    class SampleProfile
      include Whoru::Api
      include Whoru::Profile
      
    end
    sample = SampleProfile.new
    
    sample.should_receive(:get).and_return({})
    sample.profile('12345').should == {}
  end
  
end
