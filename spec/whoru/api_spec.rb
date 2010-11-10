require 'spec_helper'

describe 'Whoru::Api' do
  it 'should return a valid hash' do 
    RestClient.should_receive(:get).and_return("{ 'hello': 'world'}")
    Crack::JSON.should_receive(:parse).and_return({ 'hello' => 'world'})
    class Sample
      include Whoru::Api
    end
    Sample.new.get('http://example.com').should == { 'hello' => 'world' }
  end
end
