require 'colorscheme/colorscheme'
module Colorscheme
  class SplitComplementary < Colorscheme
    def initialize(color=nil, degrees=30)
      super(color)
      @colors.push @source_color
      complementary = complementary(@source_color)
      analogous_to_complementary = analogous(complementary, degrees)
      @colors.push complementary
      @colors.concat analogous_to_complementary
    end
  end
end
