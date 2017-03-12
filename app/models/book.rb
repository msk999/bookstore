class Book < ApplicationRecord
    belongs_to :author

    validates_presence_of :name

    scope :available, -> {where(available: true) }
    scope :unavailable, -> {where(available: [nil, false]) }

    scope :published, lambda { where("books.published_at IS NOT NULL") }
end
