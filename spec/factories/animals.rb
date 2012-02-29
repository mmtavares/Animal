# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :animal do
    especie "MyString"
    raca "MyString"
    situacao "MyString"
    sexo "MyString"
    descricao "MyString"
    instituicao nil
  end
end
