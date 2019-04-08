class ReviewAudit < ApplicationRecord
  belongs_to :album
  has_and_belongs_to_many :review_reasons
  belongs_to :person
end
