class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :exp_type
      t.text :description
      t.string :address
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
