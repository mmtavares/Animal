class CreateAdocaos < ActiveRecord::Migration
  def change
    create_table :adocaos do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :telefone
      t.string :email
      t.string :idade
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :rua
      t.references :instituicao
      t.references :agenda

      t.timestamps
    end
    add_index :adocaos, :instituicao_id
    add_index :adocaos, :agenda_id
  end
end
