class Article < ApplicationRecord
  def self.has_no_author
    where(author: nil)
  end
end
