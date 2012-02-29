class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :especie
      t.string :raca
      t.string :situacao
      t.string :sexo
      t.string :descricao
      t.references :instituicao

      t.timestamps
    end
    add_index :animals, :instituicao_id
  end
end
