require 'spec_helper'

describe "animals/new" do
  before(:each) do
    assign(:animal, stub_model(Animal,
      :especie => "MyString",
      :raca => "MyString",
      :situacao => "MyString",
      :sexo => "MyString",
      :descricao => "MyString",
      :instituicao => nil
    ).as_new_record)
  end

  it "renders new animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path, :method => "post" do
      assert_select "input#animal_especie", :name => "animal[especie]"
      assert_select "input#animal_raca", :name => "animal[raca]"
      assert_select "input#animal_situacao", :name => "animal[situacao]"
      assert_select "input#animal_sexo", :name => "animal[sexo]"
      assert_select "input#animal_descricao", :name => "animal[descricao]"
      assert_select "input#animal_instituicao", :name => "animal[instituicao]"
    end
  end
end
