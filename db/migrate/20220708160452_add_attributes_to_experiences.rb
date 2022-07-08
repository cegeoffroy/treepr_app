class AddAttributesToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :website, :string
    add_column :experiences, :phone, :string
  end
end
