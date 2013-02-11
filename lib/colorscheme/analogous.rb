require 'colorscheme/colorscheme'
module Colorscheme
  class Analogous < Colorscheme
    def initialize(color=nil, degrees=30)
      super(color)
      @colors.push(@source_color)
      @colors.concat analogous(@source_color, degrees)
    end
  end
end
