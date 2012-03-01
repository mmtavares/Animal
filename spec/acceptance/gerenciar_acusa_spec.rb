# coding: utf-8

require 'spec_helper'

feature 'gerenciar acusa' do
  before :each do
  end
  
  scenario 'incluir acusa' do
        
    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalContente')
   
    visit new_acusa_path
    preencher_e_verificar_acusa
    

  end

  scenario 'alterar acusa' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalContente')
    acusa = FactoryGirl.create(:acusa, :instituicao => instituicao)

    visit edit_acusa_path(acusa)

    preencher_e_verificar_acusa

  end

  scenario 'Excluir acusa' do #, :javascript => true do

    instituicao = FactoryGirl.create(:instituicao,:nome => 'AnimalContente')
    acusa = FactoryGirl.create(:acusa, :instituicao => instituicao)

    visit acusas_path
    click_link 'Excluir'

  end
  
  def preencher_e_verificar_acusa

    fill_in 'acusa_motivo', :with => 'Agressão'
    fill_in 'acusa_estadosaude', :with => 'Machucado'
    select 'AnimalContente', :on => 'Instituicao'
        
    click_button 'Salvar'
   
   
    page.should have_content 'Motivo: Agressão'
    page.should have_content 'Estadosaude: Machucado'
    page.should have_content 'Instituicao: AnimalContente'

  end
 
end
