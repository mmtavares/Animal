# coding: utf-8

require 'spec_helper'

feature 'gerenciar agenda' do
  before :each do
  end
  
  scenario 'incluir agenda' do
    visit new_agenda_path
    
    fill_in 'agenda_nome', :with => 'Pedro'
    fill_in 'agenda_hora', :with => '8:00'
    fill_in 'agenda_data', :with => '06/04/2012'
    fill_in 'agenda_nomeinstituicao', :with => 'Animal Livre'
    fill_in 'agenda_status', :with => 'Lotada'
    

        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Pedro'
    page.should have_content 'Hora: 8:00'
    page.should have_content 'Data: 06/04/2012'
    page.should have_content 'Nomeinstituicao: Animal Livre'
    page.should have_content 'Status: Lotada'
    

  end

  scenario 'alterar agenda' do #, :javascript => true do
    agenda = FactoryGirl.create(:agenda)
    visit edit_agenda_path(agenda)

    fill_in 'agenda_nome', :with => 'Pedro'
    fill_in 'agenda_hora', :with => '8:00'
    fill_in 'agenda_data', :with => '06/04/2012'
    fill_in 'agenda_nomeinstituicao', :with => 'Animal Livre'
    fill_in 'agenda_status', :with => 'Lotada'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Pedro'
    page.should have_content 'Hora: 8:00'
    page.should have_content 'Data: 06/04/2012'
    page.should have_content 'Nomeinstituicao: Animal Livre'
    page.should have_content 'Status: Lotada'
    
  end

   scenario 'excluir agenda' do #, :javascript => true do
    agenda = FactoryGirl.create(:agenda)
    visit agendas_path

    click_link 'Excluir'
    
    Agenda.count.should == 0
  end
 
end

