class Article < ApplicationRecord
  has_many :real_comments, :class_name => 'Comment' 
  def self.has_no_author
    where(author: nil)
  end
 
  def self.has_comments
    includes(:comments).where("comments.body is not NULL").references(:comments)
  end
end
