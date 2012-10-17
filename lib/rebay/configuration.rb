module Rebay
  class Configuration
    attr_accessor :app_id, :dev_id, :sandbox, :site_id

    def app_id(val = nil)
      return @app_id if val.nil?
      @app_id = val
    end

    def dev_id(val = nil)
      return @dev_id if val.nil?
      @dev_id = val
    end

    # Determines whether api calls will hit Ebay's sandbox
    def sandbox(val = nil)
      return @sandbox if val.nil?
      @sandbox = val
    end

    # Which Ebay site should the api calls hit? (US is 0)
    def site_id(val = nil)
      return @site_id if val.nil?
      @site_id = val
    end
  end
end
