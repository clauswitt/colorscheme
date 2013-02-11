require 'colorscheme/colorscheme'
module Colorscheme
  class Squared < Colorscheme
    def initialize(color=nil)
      super(color)
      @colors.push @source_color
      @colors.push rotate_color(@source_color, 90)
      @colors.push rotate_color(@source_color, 180)
      @colors.push rotate_color(@source_color, 270)
    end
  end
end
