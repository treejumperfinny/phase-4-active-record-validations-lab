class Author < ApplicationRecord
    has_many :posts

    validates :name, presence: true, uniqueness: true
    validates :phone_number, length: { is: 10 }

end
