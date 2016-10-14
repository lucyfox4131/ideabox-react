class Idea < ApplicationRecord
  validates :title, presence: true
  enum quality: ["Swill", "Plausible", "Genuis"]
end
