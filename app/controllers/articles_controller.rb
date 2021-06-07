class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles = @articles.where("author = ?", params[:author])
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article.title = params[:title]
    @article.author = params[:author]
    @article.updated_at = Time.now
    @article.save
  end
end
