require 'colorscheme/analogous'
describe Colorscheme::Analogous do
  it "gets adjacent colors" do
    color = Color::RGB.new(255,0,0)
    adj1 = Color::HSL.new(30,100,50)
    adj2 = Color::HSL.new(-30,100,50)
    scheme = Colorscheme::Analogous.new(color, 30)

    scheme.colors.first.should equal(color)
    scheme.colors[1].html.should eq(adj1.html)
    scheme.colors.last.html.should eq(adj2.html)
  end
end


