class Hero < ApplicationRecord
  has_and_belongs_to_many :abilities, join_table: :hero_abilities
end
