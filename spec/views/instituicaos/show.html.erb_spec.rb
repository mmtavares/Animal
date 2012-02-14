require 'spec_helper'

describe "instituicaos/show" do
  before(:each) do
    @instituicao = assign(:instituicao, stub_model(Instituicao,
      :nome => "Nome",
      :endereco => "Endereco",
      :uf => "Uf",
      :bairro => "Bairro",
      :rua => "Rua",
      :cep => "Cep",
      :telefone => "Telefone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Uf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rua/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cep/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
