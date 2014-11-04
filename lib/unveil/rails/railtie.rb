require 'unveil/rails/view_helper'

module Unveil
  class Rails
    class Railtie < ::Rails::Railtie
      initializer 'unveil-rails.view_helpers' do
        ActionView::Base.send(:include, ViewHelper)
      end

      generators do
        require 'unveil/rails/install_generator'
      end
    end
  end
end
