require 'spec_helper'

describe "animals/show" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :especie => "Especie",
      :raca => "Raca",
      :situacao => "Situacao",
      :sexo => "Sexo",
      :descricao => "Descricao",
      :instituicao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Especie/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Raca/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Situacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sexo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
