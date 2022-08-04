class Experience < ApplicationRecord
  enum status: { Draft: 0, Pending: 1, Active: 2, Inactive:3, Rejected: 4 }

  belongs_to :user
end
