require 'colorscheme/split_complementary'
describe Colorscheme::SplitComplementary do
  it "gets the complementary color, and its analogous colors" do
    color = Color::RGB.new(0,255,255)
    complementary = Color::RGB.new(255,0,0)
    adj1 = Color::HSL.new(30,100,50)
    adj2 = Color::HSL.new(-30,100,50)
    scheme = Colorscheme::SplitComplementary.new(color)

    scheme.colors.first.should equal(color)
    scheme.colors[1].html.should eq(complementary.html)
    scheme.colors[2].html.should eq(adj1.html)
    scheme.colors[3].html.should eq(adj2.html)

  end
end


