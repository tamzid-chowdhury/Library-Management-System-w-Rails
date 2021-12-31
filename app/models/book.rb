class Book < ApplicationRecord
    has_many :reviews
    validates :title, presence: true
    validates :author, presence: true 
    validates :ISBN, uniqueness: true, presence: true, format: {with: /\A[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]\z/}
    validates :copies, numericality: { only_integer: true }, presence: true
end
