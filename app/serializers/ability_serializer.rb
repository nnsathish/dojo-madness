class AbilitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :is_ultimate, :external_id
end
