require File.dirname(__FILE__) + '/spec_helper'

module Rebay
  describe Api do
    describe Api::BASE_URL_PREFIX do
      it "should be a string" do
        Rebay::Api::BASE_URL_PREFIX.should be_a String
      end
    end

    describe Api::BASE_URL_SUFFIX do
      it "should be a string" do
        Rebay::Api::BASE_URL_SUFFIX.should be_a String
      end
    end

    describe "#base_url" do
      it "should return a string" do
        Rebay::Api.base_url.should be_a String
      end
      
      context "api calls should hit the sandbox" do
        it "should return a sandboxed url" do
          Rebay.configure do |c|
            c.sandbox true
          end
          
          Rebay::Api.base_url.should include "sandbox"
        end
      end

      context "api calls shouldn't hit the sandbox" do
        it "should return a un-sandboxed url" do
          Rebay.configure do |c|
            c.sandbox false
          end
          Rebay.configuration.sandbox.should == false
          Rebay::Api.base_url.should_not include "sandbox"
        end
      end
    end
    
    it "should respond to configure" do
      Rebay::Api.should respond_to(:configure)
    end
    
    it "should allow setting of app_id" do
      Rebay::Api.should respond_to(:app_id=)
    end
    
    it "should allow getting of app_id" do
      Rebay::Api.should respond_to(:app_id)
    end
    
    describe "#build_rest_payload" do
      before(:each) do
        @api = Rebay::Api.new
      end
      
      it "should build rest payload from hash" do
        payload = @api.send(:build_rest_payload, {:test=>'blah', :test2=>'blah', :test3=>'blah'})
        payload.should include("&test=blah")
        payload.should include("&test2=blah")
        payload.should include("&test3=blah")
      end
    
      it "should escape html chars" do
         payload = @api.send(:build_rest_payload, {:test=>'blah', :test2=>'blah', :test3=>'blah blah'})
         payload.should include("&test=blah")
         payload.should include("&test2=blah")
         payload.should include("&test3=blah%20blah")
      end
    end
  end
end
