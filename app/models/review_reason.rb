class ReviewReason < ApplicationRecord
  has_and_belongs_to_many :review_audits
end
