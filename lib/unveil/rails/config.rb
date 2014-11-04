module Unveil
  class Rails
    class Config < Struct.new(:threshold, :default_placeholder)
      def default_placeholder
        super || 'blank.gif'
      end
    end
  end
end
