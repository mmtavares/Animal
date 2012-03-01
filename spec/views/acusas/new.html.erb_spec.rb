require 'spec_helper'

describe "acusas/new" do
  before(:each) do
    assign(:acusa, stub_model(Acusa,
      :motivo => "MyString",
      :estadosaude => "MyString",
      :instituicao => nil
    ).as_new_record)
  end

  it "renders new acusa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => acusas_path, :method => "post" do
      assert_select "input#acusa_motivo", :name => "acusa[motivo]"
      assert_select "input#acusa_estadosaude", :name => "acusa[estadosaude]"
      assert_select "input#acusa_instituicao", :name => "acusa[instituicao]"
    end
  end
end
