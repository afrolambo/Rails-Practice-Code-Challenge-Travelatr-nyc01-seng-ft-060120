class Blogger < ApplicationRecord
    has_many :posts 
    has_many :destinations, through: :posts

    validates :name, presence: true
    validates :name, uniqueness: {case_sensitive: false}

    validates :age, numericality: {greater_than: 0}

    validates_length_of :bio, minimum: 30
end
