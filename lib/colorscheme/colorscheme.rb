require 'color'
require 'colorscheme/algorithms'
module Colorscheme
  class Colorscheme
    include Algorithms
    attr_accessor :colors, :source_color
    def initialize(color=nil)
      @colors = []
      @source_color = color
    end
  end
end
