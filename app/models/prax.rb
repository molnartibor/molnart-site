class Prax < ActiveRecord::Base
    validates :from, presence: true
    validates :till, presence: true
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :description, presence: true, length: { minimum: 10, maximum: 500 }
    validates :company, presence: true, length: { minimum: 3, maximum: 100 }
end