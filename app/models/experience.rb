class Experience < ApplicationRecord

  validates :name, :listing_type, :website, :address, presence: true, length: { maximum: 50 }

  belongs_to :user

end
