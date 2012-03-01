# coding: utf-8

require 'spec_helper'

feature 'gerenciar adocao' do
  before :each do
  end
  
  scenario 'incluir adocao' do
        
    instituicao= FactoryGirl.create(:instituicao,:nome => 'AnimalFeliz')
    agenda= FactoryGirl.create(:agenda,:nome => 'Rafael')
    
    visit new_adocao_path
    preencher_e_verificar_adocao
    

  end

  scenario 'alterar adocao' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalFeliz')
    adocao = FactoryGirl.create(:adocao, :instituicao => instituicao)


    agenda = FactoryGirl.create(:agenda,:nome => 'Rafael')
    adocao = FactoryGirl.create(:adocao, :agenda => agenda)
     

    visit edit_adocao_path(adocao)

    preencher_e_verificar_adocao

  end

  scenario 'Excluir adocao' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalFeliz')
    adocao = FactoryGirl.create(:adocao, :instituicao => instituicao)


    agenda = FactoryGirl.create(:agenda,:nome => 'Rafael')
    adocao = FactoryGirl.create(:adocao, :agenda => agenda)

    visit adocaos_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_adocao



    fill_in 'adocao_nome', :with => 'Maria'  
    fill_in 'adocao_rg', :with => '111.111.111-1'
    fill_in 'adocao_cpf', :with => '111.111.111-11'
    fill_in 'adocao_telefone', :with => '(022)9999-9999'
    fill_in 'adocao_email', :with => 'exemplo@gmail.com'
    fill_in 'adocao_idade', :with => '30'
    fill_in 'adocao_bairro', :with => 'Pelinca'
    fill_in 'adocao_cidade', :with => 'Campos'
    fill_in 'adocao_uf', :with => 'RJ'
    fill_in 'adocao_rua', :with => 'João Pessoa'
    select 'AnimalFeliz', :on => 'Instituicao'
    select 'Rafael', :on => 'Agenda'
    
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
    page.should have_content 'Instituicao: AnimalFeliz'
    page.should have_content 'Agenda: Rafael'


  end
 
end

