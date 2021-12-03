class Course < ApplicationRecord
    validates :name, presence: true
    validates :date, presence: true
    validates :description, presence: true
end
