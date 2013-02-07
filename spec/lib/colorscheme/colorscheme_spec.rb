require 'colorscheme/colorscheme'

describe Colorscheme::Colorscheme do
  describe ".new" do
    it "can be instantiated by calling new" do
      Colorscheme::Colorscheme.new
    end
  end

  describe ".colors" do
    it "has an array of colors" do
      scheme = Colorscheme::Colorscheme.new
      scheme.colors.should be_a_kind_of(Array)
    end
  end

  describe ".source_color" do
    it "sets the source_color on the object" do
      color = Color::RGB.new(1,2,3)
      scheme = Colorscheme::Colorscheme.new({:source => color})
      scheme.source_color.should equal(color)
    end
  end
end
