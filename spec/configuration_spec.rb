require File.dirname(__FILE__) + '/spec_helper'

module Rebay
  describe Configuration do
    it "should allow getting of app_id" do
      Rebay::Configuration.new.should respond_to(:app_id)
    end

    it "should allow setting of app_id" do
      Rebay.configure do |c|
        c.app_id :value
      end
      
      Rebay.configuration.app_id.should == :value
    end

    it "should allow getting of dev_id" do
      Rebay::Configuration.new.should respond_to(:dev_id)
    end

    it "should allow setting of dev_id" do
      Rebay.configure do |c|
        c.dev_id :value
      end
      
      Rebay.configuration.dev_id.should == :value
    end

    it "should allow getting of sandbox" do
      Rebay::Configuration.new.should respond_to(:sandbox)
    end

    it "should allow setting of sandbox" do
      Rebay.configure do |c|
        c.sandbox :value
      end
      
      Rebay.configuration.sandbox.should == :value
    end

    it "should allow getting of site_id" do
      Rebay::Configuration.new.should respond_to(:site_id)
    end

    it "should allow setting of site_id" do
      Rebay.configure do |c|
        c.site_id :value
      end

      Rebay.configuration.site_id.should == :value
    end
  end
end
