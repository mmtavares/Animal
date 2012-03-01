# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :adocao do
    nome "MyString"
    rg "MyString"
    cpf "MyString"
    telefone "MyString"
    email "MyString"
    idade "MyString"
    bairro "MyString"
    cidade "MyString"
    uf "MyString"
    rua "MyString"
    instituicao nil
    agenda nil
  end
end
