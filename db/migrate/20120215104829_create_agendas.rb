class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :nome
      t.string :hora
      t.string :data
      t.string :nomeinstituicao
      t.string :status

      t.timestamps
    end
  end
end
