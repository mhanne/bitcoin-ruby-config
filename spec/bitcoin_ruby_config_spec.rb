$:.unshift(File.join(File.dirname(__FILE__), "../lib"))
require 'bitcoin/config'

RSpec.configure do |c|
  c.expect_with(:rspec) {|c| c.syntax = [:should, :expect] }
end

describe Bitcoin::Config do

  it "should load empty/nonexistant config" do
    Bitcoin::Config.load({}, [:test], "nonexistant.yml").should == {}
  end

  it "should load test config" do
    Bitcoin::Config.load({}, [:foo], "spec/fixtures/test.yml").should ==
      { all: "foo", test: "bar" }
  end

  it "should replace defaults" do
    Bitcoin::Config.load({test: "foo"}, [:foo], "spec/fixtures/test.yml").should == 
      { all: "foo", test: "bar" }
  end

  it "should load multiple files in sequence" do
    Bitcoin::Config.load({test: "foo"}, [:foo], "spec/fixtures/test2.yml:spec/fixtures/test.yml").should == 
      { all: "bar", test: "qux" }
  end

end
