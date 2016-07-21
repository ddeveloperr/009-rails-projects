class Article < ActiveRecord::Base
  # add dependent: :destroy  ==>> when we delete an article, its associated comments will also need to be deleted
  has_many :comments, dependent: :destroy  
  validates :title, presence: true,
                    length: { minimum: 5}
end

