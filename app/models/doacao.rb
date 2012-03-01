class Doacao < ActiveRecord::Base
  belongs_to :instituicao
  belongs_to :agenda
end
