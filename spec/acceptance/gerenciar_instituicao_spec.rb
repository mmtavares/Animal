# coding: utf-8

require 'spec_helper'

feature 'gerenciar instituicao' do
  before :each do
  end
  
  scenario 'incluir instituicao' do
    visit new_instituicao_path
    
    fill_in 'instituicao_nome', :with => 'Animal Livre'
    fill_in 'instituicao_endereco', :with => 'Campos'
    fill_in 'instituicao_uf', :with => 'RJ'
    fill_in 'instituicao_bairro', :with => 'Pelinca'
    fill_in 'instituicao_rua', :with => 'Rua manuel figueira'
    fill_in 'instituicao_cep', :with => '28143000'
    fill_in 'instituicao_telefone', :with => '9985-2547'
    fill_in 'instituicao_email', :with => 'animallivre@gmail.com'

        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Animal Livre'
    page.should have_content 'Endereco: Campos'
    page.should have_content 'Uf: RJ'
    page.should have_content 'Bairro: Pelinca'
    page.should have_content 'Rua: Rua manuel figueira'
    page.should have_content 'Cep: 28143000'
    page.should have_content 'Telefone: 9985-2547'
    page.should have_content 'Email: animallivre@gmail.com'

  end

  scenario 'alterar instituicao' do #, :javascript => true do
    instituicao = FactoryGirl.create(:instituicao)
    visit edit_instituicao_path(instituicao)

    fill_in 'instituicao_nome', :with => 'Animal Livre'
    fill_in 'instituicao_endereco', :with => 'Campos'
    fill_in 'instituicao_uf', :with => 'RJ'
    fill_in 'instituicao_bairro', :with => 'Pelinca'
    fill_in 'instituicao_rua', :with => 'Rua manuel figueira'
    fill_in 'instituicao_cep', :with => '28143000'
    fill_in 'instituicao_telefone', :with => '9985-2547'
    fill_in 'instituicao_email', :with => 'animallivre@gmail.com'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Animal Livre'
    page.should have_content 'Endereco: Campos'
    page.should have_content 'Uf: RJ'
    page.should have_content 'Bairro: Pelinca'
    page.should have_content 'Rua: Rua manuel figueira'
    page.should have_content 'Cep: 28143000'
    page.should have_content 'Telefone: 9985-2547'
    page.should have_content 'Email: animallivre@gmail.com'
    
  end

   scenario 'excluir instituicao' do #, :javascript => true do
    instituicao = FactoryGirl.create(:instituicao)
    visit instituicaos_path

    click_link 'Excluir'
    
    Instituicao.count.should == 0
  end
 
end
