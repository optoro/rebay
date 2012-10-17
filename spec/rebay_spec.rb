require File.dirname(__FILE__) + '/spec_helper'

describe Rebay do
  it "should respond to configure" do
    Rebay.should respond_to(:configure)
  end

  it "should respond to configuration" do
    Rebay.should respond_to(:configuration)
  end

  describe "#configuration" do
    it "should return a Rebay::Configuration object" do
      Rebay.configuration.should be_a(Rebay::Configuration)
    end
  end
end
