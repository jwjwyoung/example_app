class Article < ApplicationRecord
  validates_presence_of :id
  validates_presence_of :title
  valiates_uniqueness_of :id
  def self.has_no_author
    where(author: nil, title: nil)
  end
end
  
