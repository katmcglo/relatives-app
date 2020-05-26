class CreateFamilyMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :family_members do |t|
      t.string :name
      t.integer :age
      t.text :description
      t.string :kinship
      t.references :user, null: false, foreign_key: true
      t.string :city

      t.timestamps
    end
  end
end
