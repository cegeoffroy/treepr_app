class Experience < ApplicationRecord
  enum status: { Draft: 0, Pending: 1, Active: 2, Inactive:3, Rejected: 4 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user

  has_one_attached :cover
  has_many_attached :photos


end
