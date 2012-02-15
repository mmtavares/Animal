require 'spec_helper'

describe "agendas/index" do
  before(:each) do
    assign(:agendas, [
      stub_model(Agenda,
        :nome => "Nome",
        :hora => "Hora",
        :data => "Data",
        :nomeinstituicao => "Nomeinstituicao",
        :status => "Status"
      ),
      stub_model(Agenda,
        :nome => "Nome",
        :hora => "Hora",
        :data => "Data",
        :nomeinstituicao => "Nomeinstituicao",
        :status => "Status"
      )
    ])
  end

  it "renders a list of agendas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hora".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomeinstituicao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
