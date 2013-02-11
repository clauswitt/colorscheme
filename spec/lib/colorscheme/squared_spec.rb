require 'colorscheme/squared.rb'
describe Colorscheme::Squared do
  it "gets equally spaced colors for source" do
    color = Color::RGB.new(255,0,0)
    quad1 = Color::HSL.new(90, 100, 50)
    quad2 = Color::HSL.new(180, 100, 50)
    quad3 = Color::HSL.new(270, 100, 50)
    scheme = Colorscheme::Squared.new(color)

    scheme.colors.first.should equal(color)
    scheme.colors[1].html.should eq(quad1.html)
    scheme.colors[2].html.should eq(quad2.html)
    scheme.colors[3].html.should eq(quad3.html)
  end
end


