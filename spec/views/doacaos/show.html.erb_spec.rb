require 'spec_helper'

describe "doacaos/show" do
  before(:each) do
    @doacao = assign(:doacao, stub_model(Doacao,
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
      :nomeanimal => "Nomeanimal",
      :instituicao => nil,
      :agenda => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Idade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cidade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Uf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rua/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomeanimal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
