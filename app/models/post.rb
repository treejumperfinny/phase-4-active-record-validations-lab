class Post < ApplicationRecord
    belongs_to :author

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :title_is_clickbait

    def title_is_clickbait
        if title == "True Facts"
            errors.add(:title, "This title is not allowed")
        end
    end
end
