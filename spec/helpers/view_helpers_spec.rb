require 'unveil/rails/view_helpers'
require_relative '../mocks/context_mock'

describe Unveil::Rails::ViewHelpers do
  let(:helper) { ContextMock.new }

  before do
    String.instance_eval do
      alias_method :html_safe, :to_s
    end
  end

  context '#lazy_image_tag' do
    subject { helper.lazy_image_tag('my-image.png', options) }

    context 'when called without options' do
      let(:options) { {} }

      let(:expected_html) do
        <<-HTML
<img src="/blank.gif" data-src="/my-image.png" />
<noscript>
<img src="/my-image.png" />
</noscript>
        HTML
      end

      it { is_expected.to eq(expected_html.strip) }
    end

    context 'when alternate placeholder provided' do
      let(:options) { { placeholder: 'place.gif' } }

      let(:expected_html) do
        <<-HTML
<img src="/place.gif" data-src="/my-image.png" />
<noscript>
<img src="/my-image.png" />
</noscript>
        HTML
      end

      it { is_expected.to eq(expected_html.strip) }
    end

    context 'when retina image provided' do
      let(:options) { { retina: 'my-retina-image.png' } }

      let(:expected_html) do
        <<-HTML
<img src="/blank.gif" data-src="/my-image.png" data-src-retina="/my-retina-image.png" />
<noscript>
<img src="/my-image.png" />
</noscript>
        HTML
      end

      it { is_expected.to eq(expected_html.strip) }
    end
  end
end
