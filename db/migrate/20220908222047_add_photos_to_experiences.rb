class AddPhotosToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :photos, :string
  end
end
