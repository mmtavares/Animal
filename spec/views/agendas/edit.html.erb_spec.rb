require 'spec_helper'

describe "agendas/edit" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :nome => "MyString",
      :hora => "MyString",
      :data => "MyString",
      :nomeinstituicao => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agendas_path(@agenda), :method => "post" do
      assert_select "input#agenda_nome", :name => "agenda[nome]"
      assert_select "input#agenda_hora", :name => "agenda[hora]"
      assert_select "input#agenda_data", :name => "agenda[data]"
      assert_select "input#agenda_nomeinstituicao", :name => "agenda[nomeinstituicao]"
      assert_select "input#agenda_status", :name => "agenda[status]"
    end
  end
end
