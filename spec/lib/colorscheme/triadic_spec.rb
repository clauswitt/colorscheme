require 'colorscheme/triadic'
describe Colorscheme::Triadic do
  it "gets triadic colors for source" do
    color = Color::RGB.new(255,0,0)
    triadic1 = Color::RGB.new(0,255,0)
    triadic2 = Color::RGB.new(0,0,255)
    scheme = Colorscheme::Triadic.new(color)

    scheme.colors.first.should equal(color)
    scheme.colors[1].html.should eq(triadic1.html)
    scheme.colors[2].html.should eq(triadic2.html)
  end
end


