require 'spec_helper'

describe Summon::Refworks do
  before do
    @search = Summon::Service.new(:transport => Summon::Transport::Canned.new).search
    @doc = @search.documents.first
  end
  it "extends summon document" do
    @doc.to_refworks.should include(:RT => "Newspaper Article")
  end
  it "uses the 'Generic' for RT if no mapping is present" do
    @doc.stub(:content_type) {"Opaque"}
    @doc.to_refworks[:RT].should eql 'Generic'
  end
end
