module Unveil
  class Rails
    def self.config
      @@config ||= Config.new
    end
  end
end
