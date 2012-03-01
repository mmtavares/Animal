require 'spec_helper'

describe "adocaos/new" do
  before(:each) do
    assign(:adocao, stub_model(Adocao,
      :nome => "MyString",
      :rg => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :email => "MyString",
      :idade => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :uf => "MyString",
      :rua => "MyString",
      :instituicao => nil,
      :agenda => nil
    ).as_new_record)
  end

  it "renders new adocao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => adocaos_path, :method => "post" do
      assert_select "input#adocao_nome", :name => "adocao[nome]"
      assert_select "input#adocao_rg", :name => "adocao[rg]"
      assert_select "input#adocao_cpf", :name => "adocao[cpf]"
      assert_select "input#adocao_telefone", :name => "adocao[telefone]"
      assert_select "input#adocao_email", :name => "adocao[email]"
      assert_select "input#adocao_idade", :name => "adocao[idade]"
      assert_select "input#adocao_bairro", :name => "adocao[bairro]"
      assert_select "input#adocao_cidade", :name => "adocao[cidade]"
      assert_select "input#adocao_uf", :name => "adocao[uf]"
      assert_select "input#adocao_rua", :name => "adocao[rua]"
      assert_select "input#adocao_instituicao", :name => "adocao[instituicao]"
      assert_select "input#adocao_agenda", :name => "adocao[agenda]"
    end
  end
end
