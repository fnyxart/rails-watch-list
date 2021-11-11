class Movie < ApplicationRecord
    has_many :bookmarks

    # Validations
    validates :title, presence: true,
                      uniqueness: true
    validates :overview, presence: true
    # validates :poster_url, presence: true
    # validates :rating, presence: true
  end
