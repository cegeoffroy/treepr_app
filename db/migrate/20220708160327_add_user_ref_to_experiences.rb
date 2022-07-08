class AddUserRefToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_reference :experiences, :user, foreign_key: true
  end
end
