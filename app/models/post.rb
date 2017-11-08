class Post < ApplicationRecord
    belongs_to :topic
    belongs_to :user, optional: true
    has_many :comments, dependent: :destroy
    
   validates :title, length: { minimum: 5 }, presence: true
   validates :body, length: { minimum: 20 }, presence: true
   validates :topic, presence: true
   validates :user, presence: true

end
