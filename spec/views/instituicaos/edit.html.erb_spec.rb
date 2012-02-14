require 'spec_helper'

describe "instituicaos/edit" do
  before(:each) do
    @instituicao = assign(:instituicao, stub_model(Instituicao,
      :nome => "MyString",
      :endereco => "MyString",
      :uf => "MyString",
      :bairro => "MyString",
      :rua => "MyString",
      :cep => "MyString",
      :telefone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit instituicao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instituicaos_path(@instituicao), :method => "post" do
      assert_select "input#instituicao_nome", :name => "instituicao[nome]"
      assert_select "input#instituicao_endereco", :name => "instituicao[endereco]"
      assert_select "input#instituicao_uf", :name => "instituicao[uf]"
      assert_select "input#instituicao_bairro", :name => "instituicao[bairro]"
      assert_select "input#instituicao_rua", :name => "instituicao[rua]"
      assert_select "input#instituicao_cep", :name => "instituicao[cep]"
      assert_select "input#instituicao_telefone", :name => "instituicao[telefone]"
      assert_select "input#instituicao_email", :name => "instituicao[email]"
    end
  end
end
