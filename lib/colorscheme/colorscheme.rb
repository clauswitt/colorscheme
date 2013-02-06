require 'color'
module Colorscheme
  class Colorscheme
    attr_accessor :colors, :source_color
    def initialize(options={})
      @colors = []
      @source_color = options[:source] if options.has_key?(:source)
      if options.has_key?(:count)
        count = options[:count]
        (0...count).each do |i|
          @colors << ::Color::RGB.new(0)
        end
      end
    end
  end
end
