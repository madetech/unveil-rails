class ContextMock
  include Unveil::Rails::ViewHelper

  def image_path(path)
    "/#{path}"
  end

  def image_alt(alt)
    alt
  end

  def image_tag(source, options = {})
    options_html = ''
    options_html << " alt=\"#{options[:alt]}\"" if options[:alt]
    options_html << " data-src=\"#{options['data-src']}\"" if options['data-src']
    options_html << " data-src-retina=\"#{options['data-src-retina']}\"" if options['data-src-retina']
    "<img src=\"#{image_path(source)}\"#{options_html} />"
  end
end
