class CreateAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.string :name
      t.text :description
      t.boolean :is_ultimate
      t.integer :external_id

      t.timestamps
    end
  end
end
