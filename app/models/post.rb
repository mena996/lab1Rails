class Post < ApplicationRecord
    validates_uniqueness_of :title
    validates :title, length: { maximum: 50 }
    validates :title, :content, presence: true
    has_many :comments
end
