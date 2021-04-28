class ArticlesController < ApplicationController
  def index
    @articles = Article.all.where('articles.author = 1")
  end
end
