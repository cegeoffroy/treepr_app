class AddAttributesToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :website, :string
    add_column :experiences, :exp_phone, :string
    add_column :experiences, :max_capacity, :integer
    add_column :experiences, :status, :integer, default: 0
  end
end
