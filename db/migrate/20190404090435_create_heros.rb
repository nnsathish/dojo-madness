class CreateHeros < ActiveRecord::Migration[5.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :real_name
      t.integer :health
      t.integer :armour
      t.integer :shield
      t.integer :age
      t.integer :external_id

      t.timestamps
    end
  end
end
