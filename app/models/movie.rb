class Movie < ActiveRecord::Base
  validates :title, uniqueness: {scope: :year}
  validates :image_url, format: {with: /\Ahttp:\/\/+.+/}
  validates :year, format: {with: /[12]\d{3}/}
  validates :plot, format: {with: /[12]\d{3}/}
end
