class Hero < ApplicationRecord
  has_and_belongs_to_many :abilities, join_table: :hero_abilities

  validates :name, :real_name, :health, :armour, :shield, presence: true
  validates :armour, :shield, :health, numericality: true
  validates :external_id, presence: true, uniqueness: true
end
