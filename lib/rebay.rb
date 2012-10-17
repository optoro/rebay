require 'rebay/configuration'
require 'rebay/api'
require 'rebay/finding'
require 'rebay/shopping'
require 'rebay/response'

module Rebay
  def self.configuration
    @configuration ||= Rebay::Configuration.new
  end

  def self.configure
    yield configuration if block_given?
  end
end
