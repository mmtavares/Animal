# coding: utf-8

require 'spec_helper'

feature 'gerenciar doacao' do
  before :each do
  end
  
  scenario 'incluir doacao' do
        
    instituicao= FactoryGirl.create(:instituicao,:nome => 'AnimalLivre')
    agenda= FactoryGirl.create(:agenda,:nome => 'Pedro')
    
    visit new_doacao_path
    preencher_e_verificar_doacao
    

  end

  scenario 'alterar doacao' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalLivre')
    doacao = FactoryGirl.create(:doacao, :instituicao => instituicao)


    agenda = FactoryGirl.create(:agenda,:nome => 'Pedro')
    doacao = FactoryGirl.create(:doacao, :agenda => agenda)
     

    visit edit_doacao_path(doacao)

    preencher_e_verificar_doacao

  end

  scenario 'Excluir doacao' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalLivre')
    doacao = FactoryGirl.create(:doacao, :instituicao => instituicao)


    agenda = FactoryGirl.create(:agenda,:nome => 'Pedro')
    doacao = FactoryGirl.create(:doacao, :agenda => agenda)

    visit doacaos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_doacao



    fill_in 'doacao_nome', :with => 'Maria'  
    fill_in 'doacao_rg', :with => '111.111.111-1'
    fill_in 'doacao_cpf', :with => '111.111.111-11'
    fill_in 'doacao_telefone', :with => '(022)9999-9999'
    fill_in 'doacao_email', :with => 'exemplo@gmail.com'
    fill_in 'doacao_idade', :with => '30'
    fill_in 'doacao_bairro', :with => 'Pelinca'
    fill_in 'doacao_cidade', :with => 'Campos'
    fill_in 'doacao_uf', :with => 'RJ'
    fill_in 'doacao_rua', :with => 'João Pessoa'
    fill_in 'doacao_nomeanimal', :with => 'Dog'
    select 'AnimalLivre', :on => 'Instituicao'
    select 'Pedro', :on => 'Agenda'
    
      click_button 'Salvar'

    page.should have_content 'Nome: Maria'
    page.should have_content 'Rg: 111.111.111-1'
    page.should have_content 'Cpf: 111.111.111-11'
    page.should have_content 'Telefone: (022)9999-9999'
    page.should have_content 'Email: exemplo@gmail.com'
    page.should have_content 'Idade: 30'
    page.should have_content 'Bairro: Pelinca'
    page.should have_content 'Cidade: Campos'
    page.should have_content 'Uf: RJ'
    page.should have_content 'Rua: João Pessoa'
    page.should have_content 'Nomeanimal: Dog'
    page.should have_content 'Instituicao: AnimalLivre'
    page.should have_content 'Agenda: Pedro'


  end
 
end

