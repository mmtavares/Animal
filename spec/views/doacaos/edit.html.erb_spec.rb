require 'spec_helper'

describe "doacaos/edit" do
  before(:each) do
    @doacao = assign(:doacao, stub_model(Doacao,
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
      :nomeanimal => "MyString",
      :instituicao => nil,
      :agenda => nil
    ))
  end

  it "renders the edit doacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => doacaos_path(@doacao), :method => "post" do
      assert_select "input#doacao_nome", :name => "doacao[nome]"
      assert_select "input#doacao_rg", :name => "doacao[rg]"
      assert_select "input#doacao_cpf", :name => "doacao[cpf]"
      assert_select "input#doacao_telefone", :name => "doacao[telefone]"
      assert_select "input#doacao_email", :name => "doacao[email]"
      assert_select "input#doacao_idade", :name => "doacao[idade]"
      assert_select "input#doacao_bairro", :name => "doacao[bairro]"
      assert_select "input#doacao_cidade", :name => "doacao[cidade]"
      assert_select "input#doacao_uf", :name => "doacao[uf]"
      assert_select "input#doacao_rua", :name => "doacao[rua]"
      assert_select "input#doacao_nomeanimal", :name => "doacao[nomeanimal]"
      assert_select "input#doacao_instituicao", :name => "doacao[instituicao]"
      assert_select "input#doacao_agenda", :name => "doacao[agenda]"
    end
  end
end
