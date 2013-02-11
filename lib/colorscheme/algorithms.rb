module Colorscheme
  module Algorithms

    def analogous(source, degrees)
      [rotate_color(source, degrees), rotate_color(source, -degrees)]
    end

    def complementary(source)
      rotate_color(source, 180)
    end

    def rotate_color(source, degrees)
      hsl = source.to_hsl
      h = 360.0 * hsl.h + degrees
      Color::HSL.new(h, hsl.s * 100, hsl.l * 100).to_rgb
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
