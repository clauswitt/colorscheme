require 'colorscheme/colorscheme'
module Colorscheme
  class Triadic < Colorscheme
    def initialize(color=nil)
      super(color)
      @colors.push @source_color
      @colors.push rotate_color(@source_color, 120)
      @colors.push rotate_color(@source_color, 240)
    end
  end
end
