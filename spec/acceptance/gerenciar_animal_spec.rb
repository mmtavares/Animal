# coding: utf-8

require 'spec_helper'

feature 'gerenciar animal' do
  before :each do
  end
  
  scenario 'incluir animal' do
        
    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalLivre')
   
    visit new_animal_path
    preencher_e_verificar_animal
    

  end

  scenario 'alterar animal' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalLivre')
    animal = FactoryGirl.create(:animal, :instituicao => instituicao)

    visit edit_animal_path(animal)

    preencher_e_verificar_animal

  end

  scenario 'Excluir animal' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalLivre')
    animal = FactoryGirl.create(:animal, :instituicao => instituicao)

    visit animals_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_animal

	

    fill_in 'especie', :with => 'Cão'
    fill_in 'raca', :with => 'Vira-Lata'
    fill_in 'situacao', :with => 'Bem'
    fill_in 'sexo', :with => 'Macho'
    fill_in 'descricao', :with => 'Branco'
    select 'AnimalLivre', :on => 'Instituicao'
        
    click_button 'Salvar'
   
   
    page.should have_content 'Especie: Cão'
    page.should have_content 'Raca: Vira-Lata'
    page.should have_content 'Situacao: Bem'
    page.should have_content 'Sexo: Macho'
    page.should have_content 'Descricao: Branco'
    page.should have_content 'Instituicao: AnimalLivre'

  end
 
end
