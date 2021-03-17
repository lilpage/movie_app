class Movie < ApplicationRecord
  validates :title, :director, :year, :plot, presence: true
  validates :year, numericality: {greater_than: 1888}

  has_many :actors
end
