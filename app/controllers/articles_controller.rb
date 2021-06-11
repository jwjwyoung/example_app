class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles = @articles.where(author: param_author)
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article.title = params[:title]
    @article.author = param_author
    @article.updated_at = Time.now
    @article.save
  end
end
