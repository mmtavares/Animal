require 'spec_helper'

describe "acusas/index" do
  before(:each) do
    assign(:acusas, [
      stub_model(Acusa,
        :motivo => "Motivo",
        :estadosaude => "Estadosaude",
        :instituicao => nil
      ),
      stub_model(Acusa,
        :motivo => "Motivo",
        :estadosaude => "Estadosaude",
        :instituicao => nil
      )
    ])
  end

  it "renders a list of acusas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Motivo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estadosaude".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
