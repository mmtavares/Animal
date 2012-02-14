require 'spec_helper'

describe "instituicaos/index" do
  before(:each) do
    assign(:instituicaos, [
      stub_model(Instituicao,
        :nome => "Nome",
        :endereco => "Endereco",
        :uf => "Uf",
        :bairro => "Bairro",
        :rua => "Rua",
        :cep => "Cep",
        :telefone => "Telefone",
        :email => "Email"
      ),
      stub_model(Instituicao,
        :nome => "Nome",
        :endereco => "Endereco",
        :uf => "Uf",
        :bairro => "Bairro",
        :rua => "Rua",
        :cep => "Cep",
        :telefone => "Telefone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of instituicaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
