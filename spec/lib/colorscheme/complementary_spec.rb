require 'colorscheme/complementary'
describe Colorscheme::Complementary do
  it "gets the complementary color as well as the original" do
    color = Color::RGB.new(255,0,0)
    scheme = Colorscheme::Complementary.new(color)
    scheme.colors.first.should equal(color)
    scheme.colors.last.html.should eq(Color::RGB.new(0,255,255).html)
  end
end
