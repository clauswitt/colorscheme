require 'color'
module Colorscheme
  class Colorscheme
    attr_accessor :colors, :source_color
    def initialize(options={})
      @colors = []
      @source_color = options[:source] if options.has_key?(:source)
    end

    def complementary!
      @colors = []
      @colors.push(@source_color)
      @colors.push(complementary(@source_color))
    end

    def rotate_color(source, degrees)
      hsl = source.to_hsl
      h = 360.0 * hsl.h + degrees
      Color::HSL.new(h, hsl.s * 100, hsl.l * 100).to_rgb
    end

    def complementary(source)
      rotate_color(source, 180)
    end

    def analogous!(degrees)
      @colors = []
      @colors.push(@source_color)
      @colors.concat analogous(@source_color, degrees)
    end

    def analogous(source, degrees)
      [rotate_color(source, degrees), rotate_color(source, -degrees)]
    end

    def split_complementary!(degrees)
      @colors = []
      @colors.push @source_color
      complementary = complementary(@source_color)
      analogous_to_complementary = analogous(complementary, degrees)
      @colors.push complementary
      @colors.concat analogous_to_complementary
    end

    def triadic!
      @colors = []
      @colors.push @source_color
      @colors.concat analogous(@source_color, 120)
    end

    def squared!
      @colors = []
      @colors.push @source_color
      @colors.push rotate_color(@source_color, 90)
      @colors.push rotate_color(@source_color, 180)
      @colors.push rotate_color(@source_color, 270)
    end

    def text_color(source)
      sum = source.red + source.green + source.blue
      if sum > 382.5
        return Color::RGB.new(0,0,0)
      else
        return Color::RGB.new(255,255,255)
      end
    end
  end
end
