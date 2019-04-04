class Ability < ApplicationRecord
  has_and_belongs_to_many :heroes, join_table: :hero_abilities

  validates :name, :description, presence: true
  validates :external_id, presence: true, uniqueness: true
end
