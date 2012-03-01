class CreateDoacaos < ActiveRecord::Migration
  def change
    create_table :doacaos do |t|
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
      t.string :nomeanimal
      t.references :instituicao
      t.references :agenda

      t.timestamps
    end
    add_index :doacaos, :instituicao_id
    add_index :doacaos, :agenda_id
  end
end
