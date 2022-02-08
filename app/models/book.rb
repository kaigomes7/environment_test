class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :date_published, presence: true
    has_and_belongs_to_many :users
end
