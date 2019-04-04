class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :real_name, :health, :armour, :shield, :age, :external_id
end
