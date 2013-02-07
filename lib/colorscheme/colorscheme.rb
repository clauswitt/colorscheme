require 'color'
module Colorscheme
  class Colorscheme
    attr_accessor :colors, :source_color
    def initialize(options={})
      @colors = []
      @source_color = options[:source] if options.has_key?(:source)
    end
  end
end
