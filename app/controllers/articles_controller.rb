class ArticlesController < ApplicationController
  def index
    @articles = Article.where('articles.author = 1')
  end
end
