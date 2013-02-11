require 'colorscheme/colorscheme'
module Colorscheme
  class Complementary < Colorscheme
    def initialize(color=nil)
      super(color)
      @colors.push(@source_color)
      @colors.push(complementary(@source_color))
    end
  end
end
