class AbilitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :is_ultimate
end
