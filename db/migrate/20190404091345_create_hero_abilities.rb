class CreateHeroAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :hero_abilities do |t|
      t.integer :hero_id
      t.integer :ability_id
    end
  end
end
