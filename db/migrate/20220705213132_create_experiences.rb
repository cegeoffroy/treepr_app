class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :listing_type
      t.string :address
      t.text :description
      t.integer :max_ppl
      t.integer :price
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
