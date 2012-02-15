require 'spec_helper'

describe "agendas/show" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :nome => "Nome",
      :hora => "Hora",
      :data => "Data",
      :nomeinstituicao => "Nomeinstituicao",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hora/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomeinstituicao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
