module Unveil
  class Rails
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../../assets', __FILE__)

      def copy_initializer
        initializer 'unveil.rb' do
          <<-CONFIG
Unveil::Rails.config.threshold = nil
Unveil::Rails.config.default_placeholder = 'blank.gif'
          CONFIG
        end
      end

      def copy_blank_gif_into_app_images
        copy_file 'blank.gif', 'app/assets/images/blank.gif'
      end

      def copy_unveil_into_vendor
        copy_file 'jquery.unveil.js', 'vendor/assets/javascripts/jquery.unveil.js'
        copy_file 'unveil_init.js.erb', 'vendor/assets/javascripts/unveil_init.js.erb'

        puts ''
        puts 'Please add the following line to your JS:'
        puts ''
        puts '  //= require unveil_init'
        puts ''
      end
    end
  end
end
