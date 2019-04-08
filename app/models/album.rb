class Album < ApplicationRecord
  has_many :songs
  belongs_to :person
  has_many :review_audits
end
