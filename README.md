# Colorscheme

Colorscheme is a gem for creating a colorscheme from a known source - either a website, an image or a (set) of color(s). The gem can be used to generate a set of colors to be used in a websites stylesheet. 

It will give your options of getting the following types of colorschemes: 

 - Monochromatic
 - Complementary
 - Analogous
 - Triadic
 - Split-Complementary
 - Tetradic
 - Square

### Currently working version:

You can only get colors as Color objects (from the Color gem) and you can only get colorschemes from a known color (again, a Color object from the Color gem).

The only implemented schemes are: Complementary, Analogous, Triadic, Split-Complementary and Square.


## Installation

Add this line to your application's Gemfile:

    gem 'colorscheme'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install colorscheme

## Usage

```
scheme = Colorscheme::Triadic.new(Color.RGB.new(255,0,0))
scheme.colors # is an array of three colors
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
