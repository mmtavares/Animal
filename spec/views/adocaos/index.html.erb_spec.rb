require 'spec_helper'

describe "adocaos/index" do
  before(:each) do
    assign(:adocaos, [
      stub_model(Adocao,
        :nome => "Nome",
        :rg => "Rg",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :email => "Email",
        :idade => "Idade",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :uf => "Uf",
        :rua => "Rua",
        :instituicao => nil,
        :agenda => nil
      ),
      stub_model(Adocao,
        :nome => "Nome",
        :rg => "Rg",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :email => "Email",
        :idade => "Idade",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :uf => "Uf",
        :rua => "Rua",
        :instituicao => nil,
        :agenda => nil
      )
    ])
  end

  it "renders a list of adocaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Idade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
