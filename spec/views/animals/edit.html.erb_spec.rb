require 'spec_helper'

describe "animals/edit" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :especie => "MyString",
      :raca => "MyString",
      :situacao => "MyString",
      :sexo => "MyString",
      :descricao => "MyString",
      :instituicao => nil
    ))
  end

  it "renders the edit animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path(@animal), :method => "post" do
      assert_select "input#animal_especie", :name => "animal[especie]"
      assert_select "input#animal_raca", :name => "animal[raca]"
      assert_select "input#animal_situacao", :name => "animal[situacao]"
      assert_select "input#animal_sexo", :name => "animal[sexo]"
      assert_select "input#animal_descricao", :name => "animal[descricao]"
      assert_select "input#animal_instituicao", :name => "animal[instituicao]"
    end
  end
end
