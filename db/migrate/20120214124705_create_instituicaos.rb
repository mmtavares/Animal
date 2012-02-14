class CreateInstituicaos < ActiveRecord::Migration
  def change
    create_table :instituicaos do |t|
      t.string :nome
      t.string :endereco
      t.string :uf
      t.string :bairro
      t.string :rua
      t.string :cep
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
