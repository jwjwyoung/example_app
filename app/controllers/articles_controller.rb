class ArticlesController < ApplicationController
  def index
    @articles = Article.all.includes(:comments)
    @article = Article.first
    @comments = @article.comments
  end
end
