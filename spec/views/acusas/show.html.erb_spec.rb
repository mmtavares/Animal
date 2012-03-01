require 'spec_helper'

describe "acusas/show" do
  before(:each) do
    @acusa = assign(:acusa, stub_model(Acusa,
      :motivo => "Motivo",
      :estadosaude => "Estadosaude",
      :instituicao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Motivo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Estadosaude/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
