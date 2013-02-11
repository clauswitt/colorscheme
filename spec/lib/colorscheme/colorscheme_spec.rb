require 'colorscheme/colorscheme'

describe Colorscheme::Colorscheme do
  describe ".colors" do
    it "has an array of colors" do
      scheme = Colorscheme::Colorscheme.new
      scheme.colors.should be_a_kind_of(Array)
    end
  end

  describe ".source_color" do
    it "sets the source_color on the object" do
      color = Color::RGB.new(1,2,3)
      scheme = Colorscheme::Colorscheme.new(color)
      scheme.source_color.should equal(color)
    end
  end

  describe ".text_color" do
    it "selects black for white source" do
      color = Color::RGB.new(255,255,255)
      scheme = Colorscheme::Colorscheme.new
      text_color = scheme.text_color(color)
      text_color.html.should eq('#000000')
    end
    it "selects white for black source" do
      color = Color::RGB.new(0,0,0)
      scheme = Colorscheme::Colorscheme.new
      text_color = scheme.text_color(color)
      text_color.html.should eq('#ffffff')
    end
    it "selects white for #666666" do
      color = Color::RGB.from_html('#666666')
      scheme = Colorscheme::Colorscheme.new
      text_color = scheme.text_color(color)
      text_color.html.should eq('#ffffff')
    end
    it "selects black for #aaaaaa" do
      color = Color::RGB.from_html('#aaaaaa')
      scheme = Colorscheme::Colorscheme.new
      text_color = scheme.text_color(color)
      text_color.html.should eq('#000000')
    end
  end
end
