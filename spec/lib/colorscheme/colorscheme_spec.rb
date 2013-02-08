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

  describe ".complementary" do
    it "gets the complementary color as well as the original" do
      color = Color::RGB.new(255,0,0)
      scheme = Colorscheme::Colorscheme.new({:source => color})
      scheme.complementary!
      scheme.colors.first.should equal(color)
      scheme.colors.last.html.should eq(Color::RGB.new(0,255,255).html)
    end
  end

  describe ".analogous" do
    it "gets adjacent colors" do
      color = Color::RGB.new(255,0,0)
      adj1 = Color::HSL.new(30,100,50)
      adj2 = Color::HSL.new(-30,100,50)
      scheme = Colorscheme::Colorscheme.new({:source => color})

      scheme.analogous!(30)

      scheme.colors.first.should equal(color)
      scheme.colors[1].html.should eq(adj1.html)
      scheme.colors.last.html.should eq(adj2.html)
    end
  end

  describe ".split_complementary" do
    it "gets the complementary color, and its analogous colors" do
      color = Color::RGB.new(0,255,255)
      complementary = Color::RGB.new(255,0,0)
      adj1 = Color::HSL.new(30,100,50)
      adj2 = Color::HSL.new(-30,100,50)
      scheme = Colorscheme::Colorscheme.new({:source => color})

      scheme.split_complementary!(30)

      scheme.colors.first.should equal(color)
      scheme.colors[1].html.should eq(complementary.html)
      scheme.colors[2].html.should eq(adj1.html)
      scheme.colors[3].html.should eq(adj2.html)

    end
  end

  describe ".triadic" do
    it "gets triadic colors for source" do
      color = Color::RGB.new(255,0,0)
      triadic1 = Color::RGB.new(0,255,0)
      triadic2 = Color::RGB.new(0,0,255)
      scheme = Colorscheme::Colorscheme.new({:source => color})

      scheme.triadic!

      scheme.colors.first.should equal(color)
      scheme.colors[1].html.should eq(triadic1.html)
      scheme.colors[2].html.should eq(triadic2.html)
    end
  end

  describe ".squared" do
    it "gets equally spaced colors for source" do
      color = Color::RGB.new(255,0,0)
      quad1 = Color::HSL.new(90, 100, 50)
      quad2 = Color::HSL.new(180, 100, 50)
      quad3 = Color::HSL.new(270, 100, 50)
      scheme = Colorscheme::Colorscheme.new({:source => color})

      scheme.squared!

      scheme.colors.first.should equal(color)
      scheme.colors[1].html.should eq(quad1.html)
      scheme.colors[2].html.should eq(quad2.html)
      scheme.colors[3].html.should eq(quad3.html)
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
