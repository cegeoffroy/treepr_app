class AddCoverToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :cover, :string
  end
end
