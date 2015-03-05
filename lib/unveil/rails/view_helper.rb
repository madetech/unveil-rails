module Unveil
  class Rails
    module ViewHelper
      def lazy_image_tag(source, options = {})
        placeholder_source = options[:placeholder] || Unveil::Rails.config.default_placeholder
        options[:alt] = options[:alt] || image_alt(source)

        lazy_options = options.merge('data-src' => image_path(source))

        if options.has_key?(:retina)
          lazy_options['data-src-retina'] = image_path(options[:retina])
        end

        html = [image_tag(placeholder_source, lazy_options)]

        html << '<noscript>'
        html << image_tag(source, options)
        html << '</noscript>'

        html.join("\n").html_safe
      end
    end
  end
end
