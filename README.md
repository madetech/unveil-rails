# Unveil.js for Rails

This gem will help you get started with unveil.js rather quickly.

## Installation

Add the gem:

``` ruby
gem 'unveil-rails', '~> 0.1.0'
```

Install the assets:

```
bin/rails g unveil:rails:install
```

Include the asset in your JS:

``` js
//= require unveil_init
```

Now use the helper method whereever you want lazy images:

```erb
<%= lazy_image_tag('an-image.png') %>
<%= lazy_image_tag('an-image.png', retina: 'a-retina-image.png') %>
<%= lazy_image_tag('an-image.png', placeholder: 'placeholder.png') %>
```

## Configuration

The installation generator will have added an initializer to your application.
In this file there are a couple of settings you can change.

### Threshold

``` ruby
Unveil::Rails.config.threshold = 200
```

Setting this variable to an integer will set the unveil threshold setting
as [documented here][unveil-docs].

### Default placeholder

You may set an alternative default placeholder image:

``` ruby
Unveil::Rails.config.default_placeholder = 'default.jpg'
```

You can set the placeholder per lazy image by passing in the placeholder option:

``` erb
<%= lazy_image_tag('an-image.png', placeholder: 'placeholder.png') %>
```

## Credits

[![made](https://s3-eu-west-1.amazonaws.com/made-assets/googleapps/google-apps.png)][made]

Developed and maintained by [Made Tech][made]. Key contributions:

 * [Luke Morton](https://github.com/DrPheltRight)

## License

Copyright © 2014 Made Tech Ltd. It is free software, and may be
redistributed under the terms specified in the [LICENSE][license] file.

[made]: http://www.madetech.co.uk?ref=github&repo=cf-deploy
[license]: https://github.com/madebymade/cf-deploy/blob/master/LICENSE
[unveil-github]: https://github.com/luis-almeida/unveil
[unveil-docs]: http://luis-almeida.github.io/unveil/
