class CreateAcusas < ActiveRecord::Migration
  def change
    create_table :acusas do |t|
      t.string :motivo
      t.string :estadosaude
      t.references :instituicao

      t.timestamps
    end
    add_index :acusas, :instituicao_id
  end
end
